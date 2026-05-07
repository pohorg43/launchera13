.class public final Lcom/android/launcher3/dragndrop/DragResultInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT;,
        Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;

.field public static final TAG:Ljava/lang/String; = "DragResultInfo"


# instance fields
.field private final cardId:I

.field private final cardType:I

.field private final hostId:I

.field private result:I

.field private final source:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragResultInfo;->Companion:Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->cardType:I

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->cardId:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->hostId:I

    iput p4, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->result:I

    iput p5, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->source:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x1

    :cond_5
    move v3, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/DragResultInfo;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->cardId:I

    return p0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->cardType:I

    return p0
.end method

.method public final getHostId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->hostId:I

    return p0
.end method

.method public final getResult()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->result:I

    return p0
.end method

.method public final getSource()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->source:I

    return p0
.end method

.method public final setResult(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragResultInfo;->result:I

    return-void
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
