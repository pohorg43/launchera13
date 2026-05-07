.class Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/pkg/PackageDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/launcher/pkg/PackageDeleteManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pkg/PackageDeleteManager;Landroid/os/UserHandle;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;->this$0:Lcom/android/launcher/pkg/PackageDeleteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageDeleted. packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , returnCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageDeleteManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;->this$0:Lcom/android/launcher/pkg/PackageDeleteManager;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->onPackageDeleted(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void
.end method
