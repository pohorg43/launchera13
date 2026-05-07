.class public final synthetic Lcom/android/launcher/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/LauncherSimpleModeHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/NewUpdatedAppsManager;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/OplusDropTargetBar;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/e0;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/OplusDropTargetBar;

    invoke-static {p0}, Lcom/android/launcher/OplusDropTargetBar;->f(Lcom/android/launcher/OplusDropTargetBar;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {p0}, Lcom/android/launcher/NewUpdatedAppsManager;->a(Lcom/android/launcher/NewUpdatedAppsManager;)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/LauncherSimpleModeHelper;

    invoke-static {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->b(Lcom/android/launcher/LauncherSimpleModeHelper;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Lcom/android/launcher/WorkspaceInjector;->a(Lcom/android/launcher3/folder/FolderIcon;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
