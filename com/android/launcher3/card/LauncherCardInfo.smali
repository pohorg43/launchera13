.class public Lcom/android/launcher3/card/LauncherCardInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source ""


# static fields
.field public static final CARD_MASTER_KEY_CARD_TYPE:I = -0x3

.field private static final CARD_MIN_SIZE:I = 0x1

.field public static final CARD_MISSING_KEY_PERMISSIONS_CARD_TYPE:I = -0x4

.field public static final CARD_NO_ADVICE_CARD_TYPE:I = -0x5

.field public static final CARD_PRIVACY_PERMISSION_CARD_TYPE:I = -0x2

.field public static final INNER_CARD_CLASS_NAME:Ljava/lang/String; = "com.android.launcher.InnerCard"

.field public static final INVALID_CARD_TYPE:I = -0x1

.field public static final LARGE_CARD_SIZE_THRESHOLD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LauncherCardInfo"

.field public static final US_CARD_TYPE:I = 0xd3ecf26


# instance fields
.field public mCardId:I

.field public mCardType:I

.field public mCategory:I

.field public mDragFromAssistant:Z

.field public mDragToAssistant:Z

.field public mHostId:I

.field public mIntentId:J

.field public mPolicy:Ljava/lang/String;

.field public mProviderName:Landroid/content/ComponentName;

.field public mServiceId:Ljava/lang/String;

.field public minHeight:I

.field public minWidth:I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mIntentId:J

    iput-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mPolicy:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    return-void
.end method

.method public static asCardConfigInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 7

    new-instance v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-direct {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;-><init>()V

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v3, v2, :cond_13

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_13
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1f

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v5, v4, :cond_1f

    invoke-virtual {v0, v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_1f
    if-ne v1, v2, :cond_29

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v5, v4, :cond_29

    invoke-virtual {v0, v4}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_29
    if-ne v1, v4, :cond_34

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v1, v3, :cond_34

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_34
    invoke-virtual {v0, v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    :goto_37
    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setMinHeight(I)V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setMinWidth(I)V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setType(I)V

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setServiceId(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setCategory(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setComponentName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setPackageName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newFromCardConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 6

    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_2f

    :cond_16
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v3, :cond_27

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_2f

    :cond_27
    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :goto_2f
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dumpProperties()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCardId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHostId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCategory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public isLauncherUSContainer()Z
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const v0, 0xd3ecf26

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v0, p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public isUSBackUpCard()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v0, -0x5

    if-eq p0, v0, :cond_11

    const/4 v0, -0x4

    if-eq p0, v0, :cond_11

    const/4 v0, -0x3

    if-eq p0, v0, :cond_11

    const/4 v0, -0x2

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->obtain()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    return-object p0
.end method

.method public obtain()Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    return-object v0
.end method

.method public bridge synthetic obtain()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->obtain()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    return-object p0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "card_type"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "card_host_id"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appWidgetProvider"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    if-eqz v0, :cond_43

    const-string/jumbo v1, "service_id"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    :cond_43
    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "card_category"

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    return-void
.end method

.method public resetMinWidthAndMinHeightIfNeeded(Landroid/content/Context;)V
    .registers 10

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    if-ge v0, v1, :cond_78

    :cond_9
    const/4 v0, 0x4

    const/4 v2, 0x6

    invoke-static {p1, v0, v2}, Lcom/android/launcher/CellLayoutHelper;->getCellSize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object p1

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-le v3, v5, :cond_1b

    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    goto :goto_20

    :cond_1b
    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    :goto_20
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr v3, v6

    iput v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "resetMinWidthAndMinHeight point: "

    aput-object v7, v3, v6

    aput-object p1, v3, v1

    const-string p1, ", minWidth: "

    aput-object p1, v3, v4

    iget p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    const-string p1, ", minHeight: "

    aput-object p1, v3, v0

    const/4 p1, 0x5

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, ", spanX: "

    aput-object p1, v3, v2

    const/4 p1, 0x7

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const/16 p1, 0x8

    const-string v0, ", spanY: "

    aput-object v0, v3, p1

    const/16 p1, 0x9

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const/16 p1, 0xa

    const-string v0, ", cardItem: "

    aput-object v0, v3, p1

    const/16 p1, 0xb

    aput-object p0, v3, p1

    const-string p0, "LauncherCardInfo"

    invoke-static {p0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_78
    return-void
.end method

.method public resizeSpanXY(Landroid/content/Context;II)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v4, v5}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "LauncherCardInfo"

    const/4 v7, 0x2

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v8

    if-ne v8, v5, :cond_2d

    iput v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    const-string/jumbo v0, "resizeSpanXY CARD_RESIZE_FOR_2_PLUS_2 is false."

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    if-nez v4, :cond_46

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v4, v7, :cond_46

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v4, v7, :cond_46

    const-string/jumbo v1, "resizeSpanXY: keep 2x2 size"

    invoke-static {v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    return-void

    :cond_46
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v4

    iget v8, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v8, v3, :cond_5b

    invoke-static {v1, v10, v9}, Lcom/android/launcher/CellLayoutHelper;->getCellSize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr v8, v11

    iput v8, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    :cond_5b
    const/16 v8, 0xf

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v11, "resizeSpanXY targetCellCountX:"

    const/4 v12, 0x0

    aput-object v11, v8, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v5

    const-string v11, ",targetCellCountY:"

    aput-object v11, v8, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v8, v13

    const-string v11, ",mCardType:"

    aput-object v11, v8, v10

    iget v10, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v8, v11

    const-string v10, ",minWidth:"

    aput-object v10, v8, v9

    iget v9, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v8, v10

    const-string v9, ",minHeight:"

    const/16 v10, 0x8

    aput-object v9, v8, v10

    iget v9, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x9

    aput-object v9, v8, v11

    const-string v9, ",spanX:"

    const/16 v14, 0xa

    aput-object v9, v8, v14

    const/16 v9, 0xb

    iget v14, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v9, 0xc

    const-string v14, ",spanY:"

    aput-object v14, v8, v9

    const/16 v9, 0xd

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const-string v13, ", item: "

    invoke-static {v15, v11, v13}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/16 v9, 0xe

    aput-object v0, v8, v9

    invoke-static {v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/card/LauncherCardInfo;->resetMinWidthAndMinHeightIfNeeded(Landroid/content/Context;)V

    iget v8, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v9, 0xd3ecf26

    const-string v11, ", cellY = "

    const-string v13, ", cellX = "

    const-string/jumbo v15, "resizeSpanXY spanX:"

    if-ne v8, v9, :cond_11b

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v8

    if-nez v8, :cond_11b

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v15, v1, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v14, v1, v7

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v13, v1, v2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aput-object v11, v1, v2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_19f

    :cond_11b
    invoke-virtual {v4, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v1

    const/high16 v4, 0x3f800000  # 1.0f

    iget v8, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    move-object/from16 v16, v11

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v8, v4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v4, v8

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v15, v2, v12

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v14, v2, v7

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    aput-object v13, v2, v3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    aput-object v16, v2, v3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string v3, ", curPoint = "

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const/16 v3, 0x9

    aput-object v1, v2, v3

    invoke-static {v6, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_19f
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
