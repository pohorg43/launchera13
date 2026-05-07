.class Lcom/android/launcher3/folder/OplusFolderPagedView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderPagedView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderPagedView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderPagedView$1;->this$0:Lcom/android/launcher3/folder/OplusFolderPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderPagedView$1;->this$0:Lcom/android/launcher3/folder/OplusFolderPagedView;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderPagedView$1;->this$0:Lcom/android/launcher3/folder/OplusFolderPagedView;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p0, "OplusFolderPagedView"

    const-string/jumbo p1, "onLongClick, is minimized."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_26
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderPagedView$1;->this$0:Lcom/android/launcher3/folder/OplusFolderPagedView;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderPagedView$1;->this$0:Lcom/android/launcher3/folder/OplusFolderPagedView;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-static {p1, p0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->handleToToggleBarForFolder(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/Folder;)Z

    move-result p0

    return p0
.end method
