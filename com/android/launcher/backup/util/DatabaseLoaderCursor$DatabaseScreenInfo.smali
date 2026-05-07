.class public final Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/util/DatabaseLoaderCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseScreenInfo"
.end annotation


# instance fields
.field private mId:I

.field private mScreenRank:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->mId:I

    return p0
.end method

.method public final getMScreenRank()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->mScreenRank:I

    return p0
.end method

.method public final setMId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->mId:I

    return-void
.end method

.method public final setMScreenRank(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->mScreenRank:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "\t[DbScreen Info: "

    const-string v1, "_id: "

    invoke-static {v0, v1}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->mId:I

    const-string v2, ", "

    const-string/jumbo v3, "screenRank: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->mScreenRank:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
