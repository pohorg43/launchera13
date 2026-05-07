.class public Lcom/android/launcher/download/OplusPackageInstallInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field private volatile mGoogleExpansionsDownloadFinish:Z

.field private volatile mHasIncDownload:Z

.field public mIcon:Landroid/graphics/Bitmap;

.field public mIconPath:Ljava/lang/String;

.field public mInstallSource:Ljava/lang/String;

.field public final mItemType:I

.field private volatile mOplusExpansionsDownloadFinish:Z

.field public final mPackageName:Ljava/lang/String;

.field public mProgress:I

.field public final mState:Lcom/android/launcher/download/InstallState;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    new-instance p1, Lcom/android/launcher/download/InstallState;

    invoke-direct {p1, p3}, Lcom/android/launcher/download/InstallState;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    iput p4, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    iput-object p5, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mItemType:I

    new-instance p1, Landroid/content/ComponentName;

    const-string p3, "downloadAppClassName"

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public isGoogleExpansionsDownloadFinish()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mGoogleExpansionsDownloadFinish:Z

    return p0
.end method

.method public isHasIncDownload()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mHasIncDownload:Z

    return p0
.end method

.method public isOplusExpansionsDownloadFinish()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mOplusExpansionsDownloadFinish:Z

    return p0
.end method

.method public setGoogleExpansionsDownloadFinish(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mGoogleExpansionsDownloadFinish:Z

    return-void
.end method

.method public setHasIncDownload(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mHasIncDownload:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOplusExpansionsDownloadFinish(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mOplusExpansionsDownloadFinish:Z

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mTitle:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "installState"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    const-string v2, "installSource"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "downloadProgress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    const-string v1, "iconPath"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mItemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
