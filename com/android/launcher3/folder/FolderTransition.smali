.class public final Lcom/android/launcher3/folder/FolderTransition;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mFolder:Lcom/android/launcher3/folder/OplusFolder;

.field private mFolderParentScreenId:I

.field private mWorkspaceStartScrollX:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolder;I)V
    .registers 4

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransition;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/FolderTransition;->mFolderParentScreenId:I

    iput p2, p0, Lcom/android/launcher3/folder/FolderTransition;->mWorkspaceStartScrollX:I

    return-void
.end method


# virtual methods
.method public final doTransitionIfNeeded(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransition;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    if-nez v0, :cond_5

    goto :goto_c

    :cond_5
    iget p0, p0, Lcom/android/launcher3/folder/FolderTransition;->mWorkspaceStartScrollX:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :goto_c
    return-void
.end method

.method public final finish()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderTransition;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/FolderTransition;->mFolderParentScreenId:I

    return-void
.end method

.method public final setFolderAlpha(FI)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/FolderTransition;->mFolderParentScreenId:I

    if-ne p2, v0, :cond_c

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderTransition;->mFolder:Lcom/android/launcher3/folder/OplusFolder;

    if-nez p0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_c
    :goto_c
    return-void
.end method
