.class public Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemUpdateHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateFolderIconTextAndBgColor(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->updatePageIndicator(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    :cond_1c
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_72

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v1, :cond_58

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFolderIconTextAndBgColor: child="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Wallpapers"

    const-string v6, "OplusCellLayout"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_55

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onWallpaperBrightnessChanged()V

    :cond_6d
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-static {v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    :cond_72
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    if-eqz v0, :cond_86

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->updateBgColorFilter()V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_86
    instance-of p1, p0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz p1, :cond_8f

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->onWallpaperBrightnessChanged()V

    :cond_8f
    return-void
.end method


# virtual methods
.method public updateCellLayoutItemColor(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/CellLayout;)V
    .registers 7

    const-string v0, "Wallpapers"

    const-string v1, "OplusCellLayout"

    const-string/jumbo v2, "updateTextColor"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_6a

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_37

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isInFalling()Z

    move-result v3

    if-eqz v3, :cond_67

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    goto :goto_67

    :cond_37
    instance-of v3, v2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_58

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0, v2}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;->updateFolderIconTextAndBgColor(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isInFalling()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    goto :goto_67

    :cond_58
    instance-of v3, v2, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_67

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v2}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-static {v2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    :cond_67
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_6a
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->completeLauncherRefresh()V

    return-void
.end method
