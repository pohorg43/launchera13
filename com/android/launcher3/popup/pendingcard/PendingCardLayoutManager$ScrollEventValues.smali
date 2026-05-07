.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollEventValues"
.end annotation


# instance fields
.field private mOffset:F

.field private mOffsetPx:I

.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMOffset()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffset:F

    return p0
.end method

.method public final getMOffsetPx()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffsetPx:I

    return p0
.end method

.method public final getMPosition()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mPosition:I

    return p0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffset:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffsetPx:I

    return-void
.end method

.method public final setMOffset(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffset:F

    return-void
.end method

.method public final setMOffsetPx(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffsetPx:I

    return-void
.end method

.method public final setMPosition(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ScrollEventValues:  "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffset:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->mOffsetPx:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
