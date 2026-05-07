.class public final Lcom/android/launcher3/dragndrop/DragCardInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE;,
        Lcom/android/launcher3/dragndrop/DragCardInfo$HOST;,
        Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;
    }
.end annotation


# static fields
.field public static final CARD_MIME_TYPE:Ljava/lang/String; = "card/*"

.field public static final Companion:Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;

.field public static final DRAG_CONFIG_KEY:Ljava/lang/String; = "drag_config"

.field public static final TAG:Ljava/lang/String; = "DragCardInfo"


# instance fields
.field private final cardHeight:I

.field private final cardId:I

.field private final cardType:I

.field private final cardWidth:I

.field private final hostId:I

.field private final innerCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/dragndrop/CardIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final paddingLeft:I

.field private final paddingTop:I

.field private final source:I

.field private final touchPointX:F

.field private final touchPointY:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragCardInfo;->Companion:Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;

    return-void
.end method

.method public constructor <init>(IIIIIFFIII)V
    .registers 23

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/dragndrop/DragCardInfo;-><init>(IIIIIFFIIILjava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(IIIIIFFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 27

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v11, v2

    goto :goto_b

    :cond_9
    move/from16 v11, p8

    :goto_b
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_11

    move v12, v2

    goto :goto_13

    :cond_11
    move/from16 v12, p9

    :goto_13
    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v13, p10

    invoke-direct/range {v3 .. v13}, Lcom/android/launcher3/dragndrop/DragCardInfo;-><init>(IIIIIFFIII)V

    return-void
.end method

.method public constructor <init>(IIIIIFFIIILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIFFIII",
            "Ljava/util/List<",
            "Lcom/android/launcher3/dragndrop/CardIdentity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardType:I

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardId:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->hostId:I

    iput p4, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardWidth:I

    iput p5, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardHeight:I

    iput p6, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->touchPointX:F

    iput p7, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->touchPointY:F

    iput p8, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->paddingLeft:I

    iput p9, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->paddingTop:I

    iput p10, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->source:I

    iput-object p11, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->innerCards:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IIIIIFFIIILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 28

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    move v5, v1

    goto :goto_b

    :cond_9
    move/from16 v5, p3

    :goto_b
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move v10, v2

    goto :goto_14

    :cond_12
    move/from16 v10, p8

    :goto_14
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1a

    move v11, v2

    goto :goto_1c

    :cond_1a
    move/from16 v11, p9

    :goto_1c
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    move v12, v1

    goto :goto_25

    :cond_23
    move/from16 v12, p10

    :goto_25
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_2e

    :cond_2c
    move-object/from16 v13, p11

    :goto_2e
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v13}, Lcom/android/launcher3/dragndrop/DragCardInfo;-><init>(IIIIIFFIIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getCardHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardHeight:I

    return p0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardId:I

    return p0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardType:I

    return p0
.end method

.method public final getCardWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->cardWidth:I

    return p0
.end method

.method public final getHostId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->hostId:I

    return p0
.end method

.method public final getInnerCards()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/dragndrop/CardIdentity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->innerCards:Ljava/util/List;

    return-object p0
.end method

.method public final getPaddingLeft()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->paddingLeft:I

    return p0
.end method

.method public final getPaddingTop()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->paddingTop:I

    return p0
.end method

.method public final getSource()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->source:I

    return p0
.end method

.method public final getTouchPointX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->touchPointX:F

    return p0
.end method

.method public final getTouchPointY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;->touchPointY:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
