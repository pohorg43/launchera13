.class public final Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;
    }
.end annotation


# static fields
.field public static final APP_NAME_SWITCH_OPEN_STATE:I = 0x1

.field public static final Companion:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;

.field private static final SETTINGS_VALUE_SPLIT:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "IconStyleFontSizeObserver"

.field public static final UX_ICON_STYLE_FONT:Ljava/lang/String; = "customize_uxicon_font"

.field public static final UX_ICON_STYLE_FONT_SIMPLE:Ljava/lang/String; = "customize_uxicon_font_simple"


# instance fields
.field private mFontManager:Lcom/android/common/util/FontManager;

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->Companion:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "INSTANCE.get(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/common/util/FontManager;

    iput-object v0, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "customize_uxicon_font"

    goto :goto_2e

    :cond_2c
    const-string v0, "customize_uxicon_font_simple"

    :goto_2e
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final applyAllAppsViewTextSizeChange()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    const-string v1, "IconStyleFontSizeObserver"

    if-nez v0, :cond_12

    const-string p0, "applyAllAppsTextSizeConfig, not InDrawerMode."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-nez v0, :cond_20

    const-string p0, "applyAllAppsTextSizeConfig, view is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    const-string v0, "DrawerMode, rebindAdapters"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    return-void
.end method

.method private final applyView()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->applyAllAppsViewTextSizeChange()V

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->applyWorkspaceBubbleTextViewSizeChange()V

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->refreshIndicatorForExposure(I)V

    return-void
.end method

.method private final applyWorkspaceBubbleTextViewSizeChange()V
    .registers 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    const-string v3, "mLauncher.workspace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    const-string v4, "mLauncher.hotseat"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_7c

    move v7, v5

    move v8, v7

    :goto_2e
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v10, v7, Lcom/android/launcher3/BubbleTextView;

    if-eqz v10, :cond_44

    move-object v10, v7

    check-cast v10, Lcom/android/launcher3/BubbleTextView;

    iget-object v10, v10, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-object v11, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    iget v11, v11, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-interface {v10, v11, v5}, Lcom/android/launcher3/IBubbleTextViewExt;->updateTextSize(FZ)V

    :cond_44
    if-nez v8, :cond_77

    instance-of v10, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v10, :cond_77

    check-cast v7, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v10

    if-eqz v10, :cond_77

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v10

    if-eqz v10, :cond_77

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-object v10, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    iget v10, v10, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-interface {v8, v10, v6}, Lcom/android/launcher3/IBubbleTextViewExt;->updateTextSize(FZ)V

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/folder/FolderPagedView;->sOPlusFolderPagedViewExtV2:Lcom/android/launcher3/folder/IFolderPagedViewExt;

    invoke-interface {v7}, Lcom/android/launcher3/folder/IFolderPagedViewExt;->updatePageViewItemTextSize()V

    move v8, v6

    :cond_77
    if-lt v9, v4, :cond_7a

    goto :goto_7d

    :cond_7a
    move v7, v9

    goto :goto_2e

    :cond_7c
    move v8, v5

    :goto_7d
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_137

    move v4, v5

    :goto_84
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v9, v4, Lcom/android/launcher3/CellLayout;

    if-eqz v9, :cond_91

    check-cast v4, Lcom/android/launcher3/CellLayout;

    goto :goto_92

    :cond_91
    const/4 v4, 0x0

    :goto_92
    if-nez v4, :cond_96

    goto/16 :goto_131

    :cond_96
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_f9

    move v11, v5

    :goto_a1
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v13, v11, Lcom/android/launcher3/BubbleTextView;

    if-nez v13, :cond_af

    instance-of v13, v11, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v13, :cond_b2

    :cond_af
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    if-nez v8, :cond_e6

    instance-of v13, v11, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v13, :cond_e6

    move-object v13, v11

    check-cast v13, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v14

    if-eqz v14, :cond_e6

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v14

    if-eqz v14, :cond_e6

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-object v14, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    iget v14, v14, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-interface {v8, v14, v6}, Lcom/android/launcher3/IBubbleTextViewExt;->updateTextSize(FZ)V

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/folder/FolderPagedView;->sOPlusFolderPagedViewExtV2:Lcom/android/launcher3/folder/IFolderPagedViewExt;

    invoke-interface {v8}, Lcom/android/launcher3/folder/IFolderPagedViewExt;->updatePageViewItemTextSize()V

    move v8, v6

    :cond_e6
    instance-of v13, v11, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v13, :cond_f4

    check-cast v11, Lcom/android/launcher3/card/LauncherCardView;

    iget-object v13, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-interface {v11, v13}, Lcom/oplus/card/manager/domain/ICardView;->updateTextSize(Lcom/android/launcher3/Launcher;)V

    invoke-interface {v11, v6}, Lcom/oplus/card/manager/domain/ICardView;->setTextVisible(Z)V

    :cond_f4
    if-lt v12, v10, :cond_f7

    goto :goto_f9

    :cond_f7
    move v11, v12

    goto :goto_a1

    :cond_f9
    :goto_f9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "initVisibleViews -- visibleViews.size = "

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "IconStyleFontSizeObserver"

    invoke-static {v10, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_110
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v11, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_110

    :cond_12e
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_131
    if-lt v7, v3, :cond_134

    goto :goto_137

    :cond_134
    move v4, v7

    goto/16 :goto_84

    :cond_137
    :goto_137
    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method public static final getUxSettings(Landroid/content/Context;)Landroidx/core/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->Companion:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;->getUxSettings(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final handleSizeChange(Lcom/android/launcher/Launcher;II)F
    .registers 10

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 p2, 0x0

    goto :goto_7

    :cond_5
    add-int/lit8 p2, p3, 0x1

    :goto_7
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p3

    if-eqz p3, :cond_14

    const-string p3, "launcher_simple_mode_bubbletext_font_size_key"

    goto :goto_16

    :cond_14
    const-string p3, "launcher_bubbletext_font_size"

    :goto_16
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    invoke-virtual {v2, v1}, Lcom/android/common/util/FontManager;->getSystemFontIndex(F)I

    move-result v2

    const-string v3, "IconStyleFontSizeObserver"

    if-ltz p2, :cond_93

    iget-object v4, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    iget-object v4, v4, Lcom/android/common/util/FontManager;->mFontScales:[F

    array-length v5, v4

    if-gt p2, v5, :cond_93

    if-ltz v2, :cond_93

    array-length v5, v4

    sub-int/2addr v5, v0

    if-le v2, v5, :cond_38

    goto :goto_93

    :cond_38
    const/high16 v0, 0x3f800000  # 1.0f

    if-nez p2, :cond_3e

    const/4 v0, 0x0

    goto :goto_51

    :cond_3e
    add-int/lit8 v5, p2, -0x1

    :try_start_40
    aget v5, v4, v5

    aget v0, v4, v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_47

    div-float/2addr v5, v0

    move v0, v5

    goto :goto_51

    :catch_47
    move-exception v4

    const-string v5, "updateWorkspaceTextSize, e = "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    iget-object v4, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    iput p2, v4, Lcom/android/common/util/FontManager;->mTextScalePos:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fontScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontSizePos = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontScaleLauncher = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontManager.mFontScales[nowSystemFontIndex] = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    iget-object v1, v1, Lcom/android/common/util/FontManager;->mFontScales:[F

    aget v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    iput v0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    return v0

    :cond_93
    :goto_93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateWorkspaceTextSize, fontSizePos = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", nowSystemFontIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x40800000  # -1.0f

    return p0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    sget-object p1, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->Companion:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;

    iget-object p2, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;->getUxSettings(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2d

    const-string p2, "Content change, uri = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconStyleFontSizeObserver"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->updateTextSize(Lcom/android/launcher/Launcher;)V

    :cond_2d
    return-void
.end method

.method public final updateTextSize(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isChangingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "IconStyleFontSizeObserver"

    const-string p1, "no need hand icon style and font size change during changing mode"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    sget-object v0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->Companion:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver$Companion;->getUxSettings(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    const-string v2, "uxSettings.first"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "uxSettings.second"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->handleSizeChange(Lcom/android/launcher/Launcher;II)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->mFontManager:Lcom/android/common/util/FontManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/common/util/FontManager;->applyLauncherTextSize(Lcom/android/launcher/Launcher;F)V

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;->applyView()V

    :cond_45
    return-void
.end method
