.class public final Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;


# instance fields
.field private currentPageParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private final folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field private targetPage:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->Companion:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)V
    .registers 3

    const-string v0, "folderAnimationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    return-void
.end method


# virtual methods
.method public final addPreviewDrawableToBubble(ILcom/android/launcher3/BubbleTextView;)V
    .registers 4

    const-string v0, "bubbleTextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_f
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2e

    iget-object p2, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {p2, p0}, Lcom/android/launcher3/IBubbleTextViewExt;->setBFPreviewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    return-void
.end method

.method public final checkCurrentPreviewParams()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getCurrentPreviewParams()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    :cond_37
    return-void
.end method

.method public final onAnimateUpdate(Lcom/android/launcher3/BubbleTextView;IF)V
    .registers 6

    const-string v0, "bubbleTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    if-eqz v0, :cond_63

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    if-nez p0, :cond_36

    const/4 p0, 0x0

    goto :goto_3e

    :cond_36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3e
    if-nez p0, :cond_46

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result p0

    goto :goto_4a

    :cond_46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_4a
    if-lt p2, p0, :cond_63

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_63

    :cond_50
    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result p0

    if-lt p2, p0, :cond_63

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_63
    :goto_63
    return-void
.end method

.method public final setDrawableForBigFolder(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const-string p0, "bubbleTextView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->setBFPreviewDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final snapToTargetIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    sget-object v0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->Companion:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v1

    const-string v2, "folderAnimationManager.folderIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;->access$getExpandTargetPage(Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;Lcom/android/launcher3/folder/OplusFolderIcon;)I

    move-result v0

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    iput v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->targetPage:I

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-nez p0, :cond_39

    goto :goto_43

    :cond_39
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    if-nez p0, :cond_40

    goto :goto_43

    :cond_40
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :goto_43
    return-void
.end method

.method public final updatePreviewDrawableAlpha(Lcom/android/launcher3/BubbleTextView;I)V
    .registers 4

    const-string v0, "bubbleTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->folderAnimationManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->currentPageParams:Ljava/util/ArrayList;

    if-nez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_17
    if-eqz p0, :cond_1e

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->updateBFPreviewItemAlpha(I)V

    :cond_1e
    return-void
.end method
