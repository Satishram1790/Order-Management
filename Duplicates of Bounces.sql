select CampaignId,count(id) as No_Of_Duplicate, sum(HardBounces) as Sum_of_hardbounce
from [Paragon DB].[dbo].[Bounces]
group by CampaignId