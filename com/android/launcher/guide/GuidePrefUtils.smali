.class public Lcom/android/launcher/guide/GuidePrefUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANIMATION_ON_VALUE:Ljava/lang/String; = "0"

.field private static final DEFAULT_SINGLE_PAGE_ALIGN_TIME:I = 0x3

.field private static final PREF_KEY_BATCH_PROCESS_ICONS_GUIDE:Ljava/lang/String; = "show_batch_process_icons_guide"

.field private static final PREF_KEY_CARD_STORE_GUIDE:Ljava/lang/String; = "show_card_store_guide"

.field private static final PREF_KEY_GUIDE_STATISTICS:Ljava/lang/String; = "guide_statistics"

.field private static final PREF_KEY_PENDING_CARD_LONG_PRESS_GUIDE:Ljava/lang/String; = "show_pending_card_long_press_guide"

.field private static final PREF_KEY_PENDING_CARD_PIN_TIP:Ljava/lang/String; = "show_pending_card_pin_tip"

.field private static final PREF_KEY_PENDING_CARD_SLIDE_GUIDE:Ljava/lang/String; = "show_pending_card_slide_guide"

.field private static final PREF_KEY_SHOW_MULTI_FINGER_GUIDE:Ljava/lang/String; = "show_multi_finger_operation_guide"

.field private static final PREF_KEY_SHOW_SINGLE_PAGE_ALIGN_GUIDE:Ljava/lang/String; = "show_single_page_align_guide"

.field private static final PREF_KEY_WIDGET_MOVE_GUIDE:Ljava/lang/String; = "show_widget_move_guide"

.field private static final TAG:Ljava/lang/String; = "GuidePrefUtils"

.field private static final TEST:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeNavigationColor(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0603d4

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_23

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0603d5

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public static getDisplayViewSize(Landroid/view/View;)[I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static getGuideStatisticsData(Landroid/content/Context;)I
    .registers 3

    const-string v0, "guide_statistics"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getShowBatchProcessIconsGuide(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "show_batch_process_icons_guide"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getShowMultiFingerOperationGuide(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "show_multi_finger_operation_guide"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getShowPendingCardLongPressGuide(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "show_pending_card_long_press_guide"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getShowPendingCardPinTip(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "show_pending_card_pin_tip"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getShowPendingCardSlideGuide(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "show_pending_card_slide_guide"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getShowSlideAlignGuide(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    const-string/jumbo v0, "show_single_page_align_guide"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_16

    :catch_9
    const-string v0, "GuidePrefUtils"

    const-string/jumbo v1, "maybe old data exist"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/GuidePrefUtils;->setShowSlideAlignGuide(Landroid/content/Context;Z)V

    move p0, v0

    :goto_16
    return p0
.end method

.method public static isChildView(Landroid/view/View;Landroid/view/View;)Ljava/lang/Boolean;
    .registers 4

    if-nez p1, :cond_5

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static isRemoveAnimationOn(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "transition_animation_scale"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animator_duration_scale"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method public static needShowCardStoreGuide(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "show_card_store_guide"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static needShowWidgetMoveGuide(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "show_widget_move_guide"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static removeOverScrollShade(Landroid/view/ViewGroup;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_d
    return-void
.end method

.method public static setCardStoreGuide(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_card_store_guide"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGuideStatisticsData(Landroid/content/Context;I)V
    .registers 3

    const-string v0, "guide_statistics"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setPendingCardLongPressGuide(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_pending_card_long_press_guide"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPendingCardPinTip(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_pending_card_pin_tip"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPendingCardSlideGuide(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_pending_card_slide_guide"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShowBatchProcessIconsGuide(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_batch_process_icons_guide"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShowMultiFingerOperationGuide(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_multi_finger_operation_guide"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShowSlideAlignGuide(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_single_page_align_guide"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWidgetMoveGuide(Landroid/content/Context;Z)V
    .registers 3

    const-string/jumbo v0, "show_widget_move_guide"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
