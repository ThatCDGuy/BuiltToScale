if iframes < -1 and other.threshold > weight
{
	iframes = 60
	energy -= 1
}

if weight > other.threshold or carryspd > 0.2
	instance_destroy(other)