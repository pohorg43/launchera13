.class public Lcom/oplus/card/model/SmartEngineCardInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/model/SmartEngineCardInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/model/SmartEngineCardInfo$Companion;


# instance fields
.field private cardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private cardId:I

.field private engineView:Landroid/view/View;

.field private height:I

.field private source:I

.field private type:I

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/model/SmartEngineCardInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/model/SmartEngineCardInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/model/SmartEngineCardInfo;->Companion:Lcom/oplus/card/model/SmartEngineCardInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    iput p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->source:I

    iput p2, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->type:I

    iput p3, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Lcom/oplus/card/model/SmartEngineCardInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/oplus/card/model/SmartEngineCardInfo;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_11

    move v0, v3

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v2, v4, :cond_23

    move v2, v3

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    and-int/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v2, v4, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    and-int/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v2, v4, :cond_37

    move v2, v3

    goto :goto_38

    :cond_37
    move v2, v1

    :goto_38
    and-int/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v2, v4, :cond_41

    move v2, v3

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    and-int/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v2, v4, :cond_4b

    move v2, v3

    goto :goto_4c

    :cond_4b
    move v2, v1

    :goto_4c
    and-int/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v2, v4, :cond_55

    move v2, v3

    goto :goto_56

    :cond_55
    move v2, v1

    :goto_56
    and-int/2addr v0, v2

    iget v2, p1, Lcom/oplus/card/model/SmartEngineCardInfo;->source:I

    iget v4, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->source:I

    if-ne v2, v4, :cond_5f

    move v2, v3

    goto :goto_60

    :cond_5f
    move v2, v1

    :goto_60
    and-int/2addr v0, v2

    iget v2, p1, Lcom/oplus/card/model/SmartEngineCardInfo;->type:I

    iget v4, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->type:I

    if-ne v2, v4, :cond_69

    move v2, v3

    goto :goto_6a

    :cond_69
    move v2, v1

    :goto_6a
    and-int/2addr v0, v2

    iget v2, p1, Lcom/oplus/card/model/SmartEngineCardInfo;->cardId:I

    iget v4, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardId:I

    if-ne v2, v4, :cond_73

    move v2, v3

    goto :goto_74

    :cond_73
    move v2, v1

    :goto_74
    and-int/2addr v0, v2

    iget v2, p1, Lcom/oplus/card/model/SmartEngineCardInfo;->width:I

    iget v4, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->width:I

    if-ne v2, v4, :cond_7d

    move v2, v3

    goto :goto_7e

    :cond_7d
    move v2, v1

    :goto_7e
    and-int/2addr v0, v2

    iget p1, p1, Lcom/oplus/card/model/SmartEngineCardInfo;->height:I

    iget p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->height:I

    if-ne p1, p0, :cond_86

    move v1, v3

    :cond_86
    and-int p0, v0, v1

    return p0
.end method

.method public final getCardConfigInfo()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardId:I

    return p0
.end method

.method public final getEngineView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->engineView:Landroid/view/View;

    return-object p0
.end method

.method public final getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->height:I

    return p0
.end method

.method public final getSource()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->source:I

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->type:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic obtain()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/model/SmartEngineCardInfo;->obtain()Lcom/oplus/card/model/SmartEngineCardInfo;

    move-result-object p0

    return-object p0
.end method

.method public obtain()Lcom/oplus/card/model/SmartEngineCardInfo;
    .registers 3

    new-instance v0, Lcom/oplus/card/model/SmartEngineCardInfo;

    invoke-direct {v0}, Lcom/oplus/card/model/SmartEngineCardInfo;-><init>()V

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

    iget v1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->source:I

    iput v1, v0, Lcom/oplus/card/model/SmartEngineCardInfo;->source:I

    iget v1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->type:I

    iput v1, v0, Lcom/oplus/card/model/SmartEngineCardInfo;->type:I

    iget v1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardId:I

    iput v1, v0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardId:I

    iget v1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->width:I

    iput v1, v0, Lcom/oplus/card/model/SmartEngineCardInfo;->width:I

    iget p0, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->height:I

    iput p0, v0, Lcom/oplus/card/model/SmartEngineCardInfo;->height:I

    return-object v0
.end method

.method public final setCardConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-void
.end method

.method public final setCardId(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->cardId:I

    return-void
.end method

.method public final setEngineView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->engineView:Landroid/view/View;

    return-void
.end method

.method public final setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->height:I

    return-void
.end method

.method public final setSource(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->source:I

    return-void
.end method

.method public final setType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->type:I

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/model/SmartEngineCardInfo;->width:I

    return-void
.end method
