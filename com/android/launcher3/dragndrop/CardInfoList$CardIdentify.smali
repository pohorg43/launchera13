.class public final Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/CardInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardIdentify"
.end annotation


# instance fields
.field private final cardId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardId"
    .end annotation
.end field

.field private final cardType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardType"
    .end annotation
.end field

.field private final hostId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hostId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;->cardType:I

    iput p2, p0, Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;->cardId:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;->hostId:I

    return-void
.end method


# virtual methods
.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;->cardId:I

    return p0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;->cardType:I

    return p0
.end method

.method public final getHostId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;->hostId:I

    return p0
.end method
