.class public Lcom/android/launcher3/views/OplusFloatingIconView;
.super Lcom/android/launcher3/views/FloatingIconView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_ICON_ANIM_ADD_MILLS:I = 0xc8

.field public static final ADAPTIVE_ICON_SCALE_END:F = 1.0f

.field public static final ADAPTIVE_ICON_SCALE_START:F = 1.8f

.field public static final ANIM_END_PROGRESS:F = 1.0f

.field public static final ANTI_ALIAS_FILTER:Landroid/graphics/DrawFilter;

.field public static final ANTI_ALIAS_PAINT:Landroid/graphics/Paint;

.field public static final FADE_DURATION_MS:I = 0xc8

.field public static final GET_BADGE_MILLS:I = 0x64

.field public static final NUM_1:F = 1.0f

.field private static final SHOW_APP_ICON_DELAY:I = 0x258

.field public static final TAG:Ljava/lang/String; = "OplusFloatingIconView"


# instance fields
.field public mIsHotseatIcon:Z

.field private final mRemoteAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialapplist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/views/OplusFloatingIconView;->ANTI_ALIAS_FILTER:Landroid/graphics/DrawFilter;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/views/OplusFloatingIconView;->ANTI_ALIAS_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    const-string p1, "com.google.android.apps.podcasts"

    const-string v0, "com.heytap.reader"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mSpecialapplist:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    const-string p1, "com.google.android.apps.podcasts"

    const-string p2, "com.heytap.reader"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mSpecialapplist:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    const-string p1, "com.google.android.apps.podcasts"

    const-string p2, "com.heytap.reader"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mSpecialapplist:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$getOplusIconResult$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "Get icon drawable for fancy drawable, width = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", drawable bounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusFloatingIconView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/views/OplusClipIconView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getOplusIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Z)V
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p4

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    instance-of v1, v8, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_17

    move-object v2, v8

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move-object v10, v2

    instance-of v2, v0, Lcom/android/launcher3/popup/SystemShortcut;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_43

    instance-of v0, v8, Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto/16 :goto_1cb

    :cond_2c
    instance-of v0, v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_3d

    move-object v0, v8

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto/16 :goto_1cb

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto/16 :goto_1cb

    :cond_43
    instance-of v2, v8, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v2, :cond_50

    move-object v0, v8

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto/16 :goto_1cb

    :cond_50
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v3, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v4, v2

    instance-of v2, v8, Lcom/android/launcher3/folder/FolderIcon;

    if-nez p5, :cond_66

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isAdaptiveIconAnimSupportted()Z

    move-result v5

    if-eqz v5, :cond_66

    move v5, v11

    goto :goto_67

    :cond_66
    move v5, v12

    :goto_67
    if-eqz v5, :cond_71

    instance-of v6, v10, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-nez v2, :cond_6f

    if-eqz v6, :cond_72

    :cond_6f
    move v5, v12

    goto :goto_72

    :cond_71
    move v6, v12

    :cond_72
    :goto_72
    const-string v13, "OplusFloatingIconView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getIconResult: supportsAdaptiveIcons: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", info: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", isFancyIcon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isFolderIcon: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_19c

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v5, 0x3e7

    if-eq v2, v5, :cond_19c

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v1, v11, :cond_100

    const/4 v2, 0x6

    if-ne v1, v2, :cond_b4

    goto :goto_100

    :cond_b4
    instance-of v1, v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v1, :cond_c3

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v1

    if-eqz v1, :cond_c3

    move v5, v11

    goto :goto_c4

    :cond_c3
    move v5, v12

    :goto_c4
    if-eqz v5, :cond_cd

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_cd

    goto :goto_100

    :cond_cd
    sget-object v6, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_100

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/views/d;

    invoke-direct {v3, v7, v0, v11}, Lcom/android/launcher3/views/d;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x64

    :try_start_e8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_f0
    .catch Ljava/lang/InterruptedException; {:try_start_e8 .. :try_end_f0} :catch_f1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e8 .. :try_end_f0} :catch_f1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e8 .. :try_end_f0} :catch_f1

    goto :goto_fa

    :catch_f1
    move-exception v0

    const-string v2, "OplusFloatingIconView"

    const-string v3, "getIconResult e = "

    invoke-static {v3, v0, v2}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_fa
    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    goto :goto_103

    :cond_100
    :goto_100
    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, v10

    :goto_103
    instance-of v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_136

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v3, :cond_116

    if-nez v2, :cond_136

    :cond_116
    const-string v0, "OplusFloatingIconView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t do foreground anim. background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", foreground: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    goto :goto_137

    :cond_136
    move-object v2, v0

    :goto_137
    instance-of v0, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1cd

    :try_start_13b
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-static {v0}, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative;->getForegroundScalePercent(Landroid/graphics/drawable/AdaptiveIconDrawable;)F

    move-result v0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXDesignScale()F

    move-result v3

    div-float v3, v0, v3

    const-string v4, "OplusFloatingIconView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getForegroundScalePercent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", foregroudScalePercent: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_166
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_13b .. :try_end_166} :catch_167

    goto :goto_16d

    :catch_167
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v3, 0x3f800000  # 1.0f

    :goto_16d
    instance-of v0, v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_17b

    check-cast v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v10}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v0

    if-eqz v0, :cond_17b

    move v0, v11

    goto :goto_17c

    :cond_17b
    move v0, v12

    :goto_17c
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_185

    if-eqz v0, :cond_185

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_185
    const-string v0, "OplusFloatingIconView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foregroudScalePercent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1cf

    :cond_19c
    if-eqz v1, :cond_1a6

    const-string v0, "OplusFloatingIconView"

    const-string v1, "if doesn\'t supportsAdaptiveIcons, simply fetch from local"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1cb

    :cond_1a6
    instance-of v1, v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_1b0

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1cb

    :cond_1b0
    instance-of v1, v8, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_1c0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_1cb

    :cond_1c0
    const/4 v5, 0x1

    sget-object v6, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_1cb
    const/4 v1, 0x0

    move-object v2, v10

    :cond_1cd
    const/high16 v3, 0x3f800000  # 1.0f

    :goto_1cf
    instance-of v0, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1df

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_1e0

    :cond_1df
    const/4 v0, 0x0

    :goto_1e0
    if-nez v2, :cond_1e4

    const/4 v2, 0x0

    goto :goto_204

    :cond_1e4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_1f3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_204

    :cond_1f3
    instance-of v4, v2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v4, :cond_200

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_204

    :cond_200
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_204
    instance-of v4, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_214

    if-eqz v0, :cond_214

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_214
    move-object/from16 v4, p3

    invoke-static {v7, v2, v4}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result v0

    instance-of v4, v2, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    if-eqz v4, :cond_21f

    goto :goto_220

    :cond_21f
    move v12, v0

    :goto_220
    instance-of v0, v8, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_22e

    new-instance v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    move-object v0, v8

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v0, v4}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;-><init>(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/Boolean;)V

    :cond_22e
    monitor-enter p4

    :try_start_22f
    const-string v0, "OplusFloatingIconView"

    const-string v4, "icon load successfully"

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iput v12, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    iget-object v0, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_253

    const-string v0, "OplusFloatingIconView"

    const-string v1, "checkIconResult function in MainThread has completed and register onIconLoaded callback; "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    :cond_253
    iput-boolean v11, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    iput v3, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->uxForegroudScale:F

    monitor-exit p4

    return-void

    :catchall_259
    move-exception v0

    monitor-exit p4
    :try_end_25b
    .catchall {:try_start_22f .. :try_end_25b} :catchall_259

    throw v0
.end method

.method public static synthetic h(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$checkIconResult$0(Landroid/os/CancellationSignal;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$checkIconResult$0(Landroid/os/CancellationSignal;Landroid/view/View;)V
    .registers 6

    const-string v0, "OplusFloatingIconView"

    const-string v1, "onIconLoaded call back begin"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez p1, :cond_12

    goto :goto_4a

    :cond_12
    iget-boolean p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    if-eqz p1, :cond_1c

    const-string p0, "clipedIconView has been filled by local when check icon result in callback. do nothing here either "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_1c
    const-string p1, "set icon by the result from getOplusIconResult"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    instance-of p0, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_3c

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    goto :goto_4a

    :cond_3c
    instance-of p0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_46

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    goto :goto_4a

    :cond_46
    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private static synthetic lambda$getOplusIconResult$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkIconResult(Landroid/view/View;)V
    .registers 9

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iget-boolean v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v1, :cond_11

    new-instance v1, Lcom/android/launcher3/views/OplusFloatingIconView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView$1;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_11
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v2, 0x0

    if-nez v1, :cond_27

    if-eqz p1, :cond_26

    instance-of p0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_23

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_23
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    return-void

    :cond_27
    monitor-enter v1

    :try_start_28
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v3, :cond_2e

    monitor-exit v1

    return-void

    :cond_2e
    iget-boolean v4, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v4, :cond_65

    iget-boolean v4, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    if-eqz v4, :cond_3e

    const-string p1, "OplusFloatingIconView"

    const-string v2, "clipedIconView has been filled by local when check icon result. so,do nothing here "

    invoke-static {p1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :cond_3e
    iget-object v4, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v6, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    instance-of v3, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v3, :cond_53

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    goto :goto_61

    :cond_53
    instance-of v3, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_5d

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    goto :goto_61

    :cond_5d
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_61
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6c

    :cond_65
    new-instance v2, Lcom/android/launcher/z;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V

    iput-object v2, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    :goto_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_28 .. :try_end_6d} :catchall_70

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    return-void

    :catchall_70
    move-exception p0

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public createAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .registers 2

    new-instance v0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public ensureLoadFloatIcon(Landroid/view/View;)V
    .registers 11

    const-string v0, "OplusFloatingIconView"

    const-string v1, "ensureLoadFloatIcon"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isAdaptiveIconAnimSupportted()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v3, :cond_a1

    monitor-enter v3

    :try_start_1b
    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_25

    move v4, v1

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    const-string v5, "OplusFloatingIconView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIconLoadResult has load already ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v7, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ClipIconView\'s BG is Null ? --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v5, v5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v5, :cond_52

    if-eqz v4, :cond_9c

    if-nez v0, :cond_9c

    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v7, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v7, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isOpening:Z

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v6, p1, v7, v0, v8}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v7, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v7, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v6, p1, v7, v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->fetchAndFillLocalIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;)V

    const-string p1, "OplusFloatingIconView"

    const-string v0, "clipedIconView has already filled by local "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-string p1, "OplusFloatingIconView"

    const-string v0, "ensureLoadFloatIcon, isOpening=%s, time=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isOpening:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    monitor-exit v3

    goto :goto_a1

    :catchall_9e
    move-exception p0

    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_1b .. :try_end_a0} :catchall_9e

    throw p0

    :cond_a1
    :goto_a1
    return-void
.end method

.method public fetchAndFillLocalIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;)V
    .registers 10

    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    const-string v3, "fetchAndFillLocalIcon: :  info: "

    const-string v4, "OplusFloatingIconView"

    invoke-static {v3, p3, v4}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    instance-of p3, p3, Lcom/android/launcher3/popup/SystemShortcut;

    const/4 v3, 0x0

    if-eqz p3, :cond_40

    instance-of p3, p2, Landroid/widget/ImageView;

    if-eqz p3, :cond_2b

    move-object p3, p2

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4e

    :cond_2b
    instance-of p3, p2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p3, :cond_3b

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4e

    :cond_3b
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4e

    :cond_40
    if-eqz v0, :cond_43

    goto :goto_4e

    :cond_43
    instance-of p3, p2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p3, :cond_4d

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_4e

    :cond_4d
    move-object v2, v1

    :goto_4e
    instance-of p3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p3, :cond_5e

    move-object p3, v2

    check-cast p3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p3

    goto :goto_5f

    :cond_5e
    move-object p3, v1

    :goto_5f
    if-nez v2, :cond_63

    move-object v0, v1

    goto :goto_83

    :cond_63
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_83

    :cond_72
    instance-of v0, v2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v0, :cond_7f

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_83

    :cond_7f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_83
    instance-of v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_93

    if-eqz p3, :cond_93

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_93
    if-nez v0, :cond_96

    return-void

    :cond_96
    const-string p3, "fetchAndFillLocalIcon: drawable get success "

    invoke-static {v4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, p4}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result p1

    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    instance-of p1, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_b1

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2, v3}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    goto :goto_b5

    :cond_b1
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_b5
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void
.end method

.method public recycle()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;

    invoke-static {v1}, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->access$000(Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;)V

    goto :goto_b

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_20
    return-void
.end method

.method public resetIconToVisible()V
    .registers 3

    const-string v0, "OplusFloatingIconView"

    const-string v1, "reset icon when anim exception"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_20

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    :cond_20
    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "FFFFZ",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3c

    invoke-interface {p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-nez p6, :cond_3c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "OplusFloatingIconView"

    const-string v2, "Icon has ready, but container is GONE"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->begin(ZLandroid/view/View;)V

    :cond_37
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->ensureLoadFloatIcon(Landroid/view/View;)V

    :cond_3c
    invoke-super/range {p0 .. p8}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_30

    :cond_27
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_30
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p1

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method
