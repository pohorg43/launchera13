.class Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAppStateOplusExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutUpdateTask"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mShortcutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->mShortcutList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public addShortcutInfo(Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->mShortcutList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute(Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->mShortcutList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/launcher3/LauncherModel;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
