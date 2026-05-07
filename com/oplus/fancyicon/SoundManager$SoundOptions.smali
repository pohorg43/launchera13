.class public Lcom/oplus/fancyicon/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mSound:Ljava/lang/String;

.field public mStop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZFZ)V
    .registers 6

    invoke-direct {p0, p2, p3, p4}, Lcom/oplus/fancyicon/SoundManager$SoundOptions;-><init>(ZZF)V

    iput-boolean p5, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mStop:Z

    iput-object p1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mSound:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mKeepCur:Z

    iput-boolean p2, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mLoop:Z

    const/4 p1, 0x0

    cmpg-float p2, p3, p1

    if-gez p2, :cond_f

    iput p1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mVolume:F

    goto :goto_1a

    :cond_f
    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float p2, p3, p1

    if-lez p2, :cond_18

    iput p1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mVolume:F

    goto :goto_1a

    :cond_18
    iput p3, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mVolume:F

    :goto_1a
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "SoundOptions{mSound=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mSound:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mKeepCur="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mKeepCur:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mLoop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mVolume:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
