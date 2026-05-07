.class Lcom/android/launcher/Launcher$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->executeLocationIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;

.field public final synthetic val$locationIconComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/Launcher$15;->this$0:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/Launcher$15;->val$locationIconComponentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/Launcher$15;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getInstance()Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/Launcher$15;->val$locationIconComponentName:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->locateFindItemInWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher/Launcher;->access$1902(Lcom/android/launcher/Launcher;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
