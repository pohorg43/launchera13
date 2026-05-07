.class public Lcom/android/launcher3/dot/OplusShortCutDotInfo;
.super Lcom/android/launcher3/dot/DotInfo;
.source ""


# static fields
.field public static final BADGE_DOT:I = 0x2

.field public static final BADGE_NONE:I = 0x0

.field public static final BADGE_NUMBER:I = 0x1

.field public static final BADGE_NUMBER_9:I = 0x9

.field public static final BADGE_NUMBER_MAX_COUNT:I = 0x63

.field public static final RESULT_CODE:I = 0x1f

.field public static final UPDATE_BADGE_NUMBER_DELAY_TIME:I = 0x320


# instance fields
.field private mBadgeType:I

.field private mLastUpdateNumberCountTime:J

.field private mNumberCount:I

.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    iput p1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    iput p2, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    :goto_13
    if-eqz v0, :cond_33

    const/4 v1, 0x0

    iget v2, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    iget v3, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_28

    iget v1, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    iput v3, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    move v1, v4

    :cond_28
    iget-boolean p0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->mIsFold:Z

    iget-boolean p1, p1, Lcom/android/launcher3/notification/NotificationKeyData;->mIsFold:Z

    if-eq p0, p1, :cond_31

    iput-boolean p1, v0, Lcom/android/launcher3/notification/NotificationKeyData;->mIsFold:Z

    goto :goto_32

    :cond_31
    move v4, v1

    :goto_32
    return v4

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget v1, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    iget p1, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/dot/DotInfo;->mTotalCount:I

    :cond_42
    return v0
.end method

.method public canShowBadgeNumber()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->showBadgeNumber()Z

    move-result v0

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public canShowDot()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->showBadgeDot()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->hasNotificationKeyData()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->isAllNotificationFold()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    invoke-super {p0, p1}, Lcom/android/launcher3/dot/DotInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    instance-of v1, p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    check-cast p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;

    iget v3, p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    iget v3, p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mLastUpdateNumberCountTime:J

    iget-wide p0, p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mLastUpdateNumberCountTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public getBadgeType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    return p0
.end method

.method public getLastUpdateNumberCountTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mLastUpdateNumberCountTime:J

    return-wide v0
.end method

.method public getNumberCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->showBadgeNumber()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public hasNotificationKeyData()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hashCode()I
    .registers 5

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mLastUpdateNumberCountTime:J

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public isAllNotificationFold()Z
    .registers 4

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_26

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/dot/DotInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-boolean v0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->mIsFold:Z

    and-int/2addr v1, v0

    goto :goto_16

    :cond_26
    :goto_26
    return v1
.end method

.method public makeCopy(Lcom/android/launcher3/dot/OplusShortCutDotInfo;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/dot/DotInfo;->makeCopy(Lcom/android/launcher3/dot/DotInfo;)V

    iget v0, p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    iput v0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    iget p1, p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    iput p1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    return-void
.end method

.method public setBadgeType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    return-void
.end method

.method public setLastUpdateNumberCountTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mLastUpdateNumberCountTime:J

    return-void
.end method

.method public setNumberCount(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    return-void
.end method

.method public shouldBeInvalidated(Lcom/android/launcher3/dot/OplusShortCutDotInfo;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->getBadgeType()I

    move-result v0

    iget v1, p1, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v1

    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->getNumberCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->getNumberCount()I

    move-result v1

    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->showBadgeDot()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->isAllNotificationFold()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->isAllNotificationFold()Z

    move-result p1

    if-eq p0, p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    :goto_30
    return p0
.end method

.method public showBadgeDot()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public showBadgeNone()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public showBadgeNumber()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DotInfo:[Type="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mBadgeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->mNumberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusShortCutDotInfo;->hasNotificationKeyData()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
