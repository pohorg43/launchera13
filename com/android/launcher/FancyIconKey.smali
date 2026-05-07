.class public Lcom/android/launcher/FancyIconKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/FancyIconKey$AppLocationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FancyIconKey"


# instance fields
.field private mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

.field private mClassName:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/FancyIconKey;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/FancyIconKey;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/FancyIconKey;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/FancyIconKey;->mClassName:Ljava/lang/String;

    goto :goto_27

    :cond_1a
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/FancyIconKey;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/FancyIconKey;->mClassName:Ljava/lang/String;

    const-string v0, "ItemInfo: "

    const-string v1, "FancyIconKey"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :goto_27
    iput-object p1, p0, Lcom/android/launcher/FancyIconKey;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getAppLocationType()Lcom/android/launcher/FancyIconKey$AppLocationType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_PREDICTION:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne v0, v1, :cond_34

    iput-object v1, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    goto :goto_4e

    :cond_34
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getAppLocationType()Lcom/android/launcher/FancyIconKey$AppLocationType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_SEARCH:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne v0, v1, :cond_3f

    iput-object v1, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    goto :goto_4e

    :cond_3f
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getAppLocationType()Lcom/android/launcher/FancyIconKey$AppLocationType;

    move-result-object p1

    sget-object v0, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne p1, v0, :cond_4a

    iput-object v0, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    goto :goto_4e

    :cond_4a
    sget-object p1, Lcom/android/launcher/FancyIconKey$AppLocationType;->WORKSPACE:Lcom/android/launcher/FancyIconKey$AppLocationType;

    iput-object p1, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    :goto_4e
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/android/launcher/FancyIconKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    check-cast p1, Lcom/android/launcher/FancyIconKey;

    iget-object v0, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    sget-object v2, Lcom/android/launcher/FancyIconKey$AppLocationType;->WORKSPACE:Lcom/android/launcher/FancyIconKey$AppLocationType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_22

    iget-object v0, p1, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne v0, v2, :cond_22

    iget-object p0, p0, Lcom/android/launcher/FancyIconKey;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    iget-object p1, p1, Lcom/android/launcher/FancyIconKey;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne p0, p1, :cond_21

    move v1, v3

    :cond_21
    return v1

    :cond_22
    iget-object v0, p0, Lcom/android/launcher/FancyIconKey;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_35

    iget-object v2, p1, Lcom/android/launcher/FancyIconKey;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    iget-object p1, p1, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne p0, p1, :cond_35

    move v1, v3

    :cond_35
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/FancyIconKey;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/FancyIconKey;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    sget-object v1, Lcom/android/launcher/FancyIconKey$AppLocationType;->WORKSPACE:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne v0, v1, :cond_d

    iget-object p0, p0, Lcom/android/launcher/FancyIconKey;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_d
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher/FancyIconKey;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/launcher/FancyIconKey;->mClassName:Ljava/lang/String;

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object v0, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/FancyIconKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/FancyIconKey;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/FancyIconKey;->mAppInfoLocationType:Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
