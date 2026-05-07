.class Lcom/android/launcher/locateaction/FindLocateIconFunction$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/locateaction/FindLocateIconFunction;->openFolder(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

.field public final synthetic val$folder:Lcom/android/launcher3/folder/Folder;

.field public final synthetic val$folderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;Lcom/android/launcher3/folder/Folder;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iput-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;->val$folderView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;->val$folder:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;->val$folderView:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$600(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    goto :goto_13

    :cond_b
    if-nez p1, :cond_13

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;->val$folder:Lcom/android/launcher3/folder/Folder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    :cond_13
    :goto_13
    return-void
.end method
