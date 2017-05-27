package join

import com.twitter.scalding._
import cascading.tuple.TupleEntry

class lo (args: Args) extends Job(args) {
	val inputFields = 'line
			val users = ('id, 'email, 'language, 'location)
			val txns = ('txn_id, 'prd_id, 'user_id, 'pur_amt, 'item_desc);

	val input1 = TextLine(args("input1"))
			val input2 = TextLine(args("input2"))
			val output = Tsv(args("output"))

			val usersInput = input1.read.mapTo(inputFields -> users){te:TupleEntry => 
	val split = te.getString("line").split("\t");
	(split(0), split(1), split(2), split(3))
	}

	val txnsInput = input2.read.mapTo(inputFields -> txns) {te:TupleEntry =>
	val split = te.getString("line").split("\t");
	(split(0), split(1), split(2), split(3), split(4))
	}

	val joinedBranch = txnsInput
			.joinWithSmaller('user_id -> 'id, usersInput)
			.project('prd_id,'location)
			.unique('prd_id,'location)
			.groupBy('prd_id) {group => group.size(Set('location))}
	.write(output)  
}
