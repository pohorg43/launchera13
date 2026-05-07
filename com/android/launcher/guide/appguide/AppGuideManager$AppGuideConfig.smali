.class Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/appguide/AppGuideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppGuideConfig"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mEnable:Z

.field private mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mPriority:I

    return p0
.end method

.method public getUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public isEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mEnable:Z

    return p0
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mEnable:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mPriority:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mUri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "AppGuideConfig{mEnable="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mUri:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mClassName=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mClassName:Ljava/lang/String;

    const-string v3, ", mPackageName=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
