.class public Lcom/android/launcher3/card/PendingAddCardInfo;
.super Lcom/android/launcher3/widget/PendingAddWidgetInfo;
.source ""


# instance fields
.field private mCardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field public mCardId:I

.field public mCategory:I

.field public mFromDrop:Z

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field public mServiceId:Ljava/lang/String;

.field public minHeight:I

.field public minWidth:I


# direct methods
.method public constructor <init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->minWidth:I

    iput p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->minHeight:I

    iput p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mCardId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mServiceId:Ljava/lang/String;

    iput p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mCategory:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSpanX()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSpanY()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinWidth()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->minWidth:I

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinHeight()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->minHeight:I

    iput-object p1, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mCardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    iget-object p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mCardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mCategory:I

    return-void
.end method

.method private getCardSizeByConfig(I)[I
    .registers 3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    new-array p0, p0, [I

    fill-array-data p0, :array_18

    return-object p0

    :cond_c
    new-array p0, p0, [I

    fill-array-data p0, :array_20

    return-object p0

    :cond_12
    new-array p0, p0, [I

    fill-array-data p0, :array_28

    return-object p0

    :array_18
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_20
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x4
        0x2
    .end array-data
.end method


# virtual methods
.method public getCardConfigInfo()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mCardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public getLoadingDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/PendingAddCardInfo;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
