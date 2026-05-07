.class public Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/pkg/PackageDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UninstallTaskState"
.end annotation


# instance fields
.field public mChanged:Z

.field public mCurrentUninstallCount:I

.field public mFailPackageDeletedCount:I

.field public mHasDonePackageDeleted:I

.field public mTaskKey:Ljava/lang/String;

.field public mUninstallInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/launcher/pkg/PackageDeleteManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pkg/PackageDeleteManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->this$0:Lcom/android/launcher/pkg/PackageDeleteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mTaskKey:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    iput p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    iput p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    iput-boolean p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mChanged:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mUninstallInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public initState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    iput v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    iput v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    iput-boolean v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mChanged:Z

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mUninstallInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public reInitFailState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "mCurrentUninstallCount: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mHasDonePackageDeleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mFailPackageDeletedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mUninstallInfos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mUninstallInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
