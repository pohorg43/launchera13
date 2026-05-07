.class public Lcom/oplus/uxicon/ui/util/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile o:Lcom/oplus/uxicon/ui/util/g;

.field public static p:Lcom/oplus/uxicon/helper/IconConfig;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/Path;

.field public e:Landroid/graphics/Path;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:[Ljava/lang/String;

.field public k:[Ljava/lang/String;

.field public l:[Ljava/lang/String;

.field public m:Landroid/graphics/LightingColorFilter;

.field public n:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/util/g;->f:Z

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/util/g;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->i:Ljava/util/ArrayList;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/d;->b()V

    return-void
.end method

.method public static a()Lcom/oplus/uxicon/ui/util/g;
    .registers 2

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->o:Lcom/oplus/uxicon/ui/util/g;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/uxicon/ui/util/g;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->o:Lcom/oplus/uxicon/ui/util/g;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/uxicon/ui/util/g;

    invoke-direct {v1}, Lcom/oplus/uxicon/ui/util/g;-><init>()V

    sput-object v1, Lcom/oplus/uxicon/ui/util/g;->o:Lcom/oplus/uxicon/ui/util/g;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->o:Lcom/oplus/uxicon/ui/util/g;

    return-object v0
.end method


# virtual methods
.method public final a(F)I
    .registers 2

    const/16 p0, 0xd6

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public a(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/PackageManager;
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "mPm"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const-string p1, "get app package manager error: "

    const-string v0, "UxIconLoaderUtil"

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_b

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method public a(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p0, "UxIconLoaderUtil"

    const-string p1, "getIconThemeDrawable resource is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_f
    instance-of v0, p2, Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_20

    instance-of v0, p2, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_18

    goto :goto_20

    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    instance-of v1, p2, Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3d

    check-cast p2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v1, p2, :cond_3d

    const-string p2, "dialer_"

    goto :goto_3f

    :cond_3d
    const-string p2, ""

    :goto_3f
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {v1}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getDensityName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_COMMON_ICON_THEME_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "monochrome"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, v0, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/helper/IconConfig;[I)Landroid/graphics/drawable/Drawable;
    .registers 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const-string v5, "UxIconLoaderUtil"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_72

    if-eqz v0, :cond_72

    if-nez v2, :cond_14

    goto :goto_72

    :cond_14
    if-eqz v3, :cond_5d

    array-length v8, v3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1b

    goto :goto_5d

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-nez v11, :cond_27

    const-string v0, "handleIconThemeDrawable resource is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_27
    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v2}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, -0x1

    invoke-direct {v13, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    aget v2, v3, v7

    sget-object v5, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v0, v2, v5}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v12, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    neg-float v0, v0

    invoke-direct {v12, v1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    aget v1, v3, v6

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v0

    return-object v0

    :cond_5d
    :goto_5d
    const-string v0, "handleIconThemeDrawable colors error: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_66

    goto :goto_67

    :cond_66
    move v6, v7

    :goto_67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_72
    :goto_72
    const-string v3, "handleIconThemeDrawable is null:"

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_7c

    move v1, v6

    goto :goto_7d

    :cond_7c
    move v1, v7

    :goto_7d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  ;"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_89

    move v0, v6

    goto :goto_8a

    :cond_89
    move v0, v7

    :goto_8a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_93

    goto :goto_94

    :cond_93
    move v6, v7

    :goto_94
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    new-instance p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sget-object p2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object p0

    new-instance p1, Le/b;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getScalePercent()F

    move-result p0

    sget p2, Lcom/oplus/uxicon/ui/R$drawable;->ic_local_special_foreground:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2}, Le/b;-><init>(FLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_4b
    return-object p3
.end method

.method public a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v2, 0x0

    if-eqz v1, :cond_148

    if-eqz v8, :cond_148

    if-nez v9, :cond_11

    goto/16 :goto_148

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7, v9}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    const/4 v12, 0x0

    :try_start_1e
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_3f

    :catch_27
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get activity info error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UxIconLoaderUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_3f
    if-eqz v0, :cond_148

    if-nez v10, :cond_45

    goto/16 :goto_148

    :cond_45
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_4b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4f} :catch_148

    invoke-virtual {v7, v8, v1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    iput-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iput-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "dialer_"

    goto :goto_63

    :cond_61
    const-string v1, ""

    :goto_63
    move-object v15, v1

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6a

    move v2, v12

    :cond_6a
    if-eqz v2, :cond_107

    invoke-static {v13, v8}, Lcom/oplus/uxicon/ui/util/e;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v16

    invoke-static {v15}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v4, v14

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v15}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_104

    invoke-virtual {v7, v1}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v1, v14}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sget-object v3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->l:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-static {v2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object v1

    new-instance v2, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    iget-object v3, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3, v4, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    goto :goto_11f

    :cond_104
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_12b

    :cond_107
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v1

    invoke-virtual {v1, v10, v13, v0, v11}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v13, v8}, Lcom/oplus/uxicon/ui/util/e;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_121

    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1, v2, v8, v12}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v2

    :goto_11f
    const/4 v1, 0x1

    goto :goto_12b

    :cond_121
    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    invoke-virtual {v7, v1, v2, v8, v3}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v2

    move v1, v3

    :goto_12b
    iget-object v3, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_13f

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v2

    invoke-virtual {v2, v10, v13, v0, v11}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v7, v2, v0, v8, v1}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v2

    :cond_13f
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :catch_148
    :cond_148
    :goto_148
    return-object v2
.end method

.method public final a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 13

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v7, 0x0

    if-nez v3, :cond_8

    return-object v7

    :cond_8
    invoke-virtual {p0, p2, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v0, v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v3}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object v8

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getItemIndexInSpecialStyleConfigArray(I)I

    move-result p1

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getSpecialStylePrefixInPosition(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object p1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6a

    move v6, p2

    goto :goto_6b

    :cond_6a
    move v6, v1

    :goto_6b
    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {p1, v7, p0, v8}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p1
.end method

.method public final a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .registers 19

    move-object v7, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    move-object v1, p1

    invoke-virtual {p0, v8, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    new-instance v2, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v2, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sget-object v4, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object v10

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_64

    move-object/from16 v11, p3

    invoke-virtual {p0, v10, v8, v11}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_64
    move-object/from16 v11, p3

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_82

    move v6, v12

    goto :goto_83

    :cond_82
    move v6, v9

    :goto_83
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    if-ne v0, v12, :cond_a5

    move v6, v12

    goto :goto_a6

    :cond_a5
    move v6, v9

    :goto_a6
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {v1, v0, v13, v10}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object v1
.end method

.method public final a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;
    .registers 21

    move-object v7, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_b

    return-object v10

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {p0, v8, v0}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v1, v9}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sget-object v3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v9}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object v12

    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_a3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v1

    if-gtz v1, :cond_77

    const/16 v1, 0xa8

    :cond_77
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sget-object v3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v3

    invoke-static {v1, v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v12, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->setCustomIconSize(I)V

    :cond_a3
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    if-eq v0, v13, :cond_b7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b0

    goto :goto_b7

    :cond_b0
    move-object/from16 v14, p3

    invoke-virtual {p0, v12, v8, v14}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_b7
    :goto_b7
    move-object/from16 v14, p3

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getCommonStylePrefixInPosition(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    if-ne v0, v13, :cond_d2

    move v6, v13

    goto :goto_d3

    :cond_d2
    move v6, v11

    :goto_d3
    move-object v0, p0

    move-object/from16 v1, p3

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_123

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    if-ne v0, v13, :cond_f4

    move v6, v13

    goto :goto_f5

    :cond_f4
    move v6, v11

    :goto_f5
    move-object v0, p0

    move-object/from16 v1, p3

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    if-ne v0, v13, :cond_114

    move v6, v13

    goto :goto_115

    :cond_114
    move v6, v11

    :goto_115
    move-object v0, p0

    move-object/from16 v1, p3

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {v1, v0, v10, v12}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object v1

    :cond_123
    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {v1, v0, v10, v12}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object v1
.end method

.method public a(Lcom/oplus/uxicon/helper/IconConfig;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .registers 14

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_8

    return-object v6

    :cond_8
    invoke-virtual {p0, p3, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, ""

    invoke-direct {v1, p4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->loadDrawableFromIconPack(Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v1, v4}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sget-object v5, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v5}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v5

    invoke-static {v3, v5}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v4}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/g;->e:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object v7

    if-eqz v0, :cond_60

    new-instance p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {p0, v0, v6, v7}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p0

    :cond_60
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_67

    return-object v6

    :cond_67
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p5, 0x2

    new-array p5, p5, [Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p5, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p5, v1

    invoke-direct {p1, p5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v0

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->generateIconPackDrawable(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-ne p2, p1, :cond_92

    return-object p0

    :cond_92
    new-instance p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {p0, p2, v6, v7}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p0
.end method

.method public final a(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 22

    move-object/from16 v0, p1

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getArtClosePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v1, v10, :cond_1a

    move v8, v10

    goto :goto_1b

    :cond_1a
    move v8, v9

    :goto_1b
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_72

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v1

    if-ne v1, v10, :cond_3f

    move v8, v10

    goto :goto_40

    :cond_3f
    move v8, v9

    :goto_40
    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v2

    if-ne v2, v10, :cond_62

    move/from16 v17, v10

    goto :goto_64

    :cond_62
    move/from16 v17, v9

    :goto_64
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    invoke-virtual/range {v11 .. v17}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {v3, v2, v1, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object v3

    :cond_72
    new-instance v2, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object v2
.end method

.method public final a(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_1d

    if-nez p2, :cond_6

    goto :goto_1d

    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1d

    :try_start_b
    invoke-static {p2, p0, v0, p1, p0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1d

    return-object p1

    :catchall_13
    move-exception p1

    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p2

    :try_start_19
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;
    .registers 8

    if-eqz p5, :cond_2f

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {p5}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getDensityName(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_COMMON_ICON_THEME_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    if-nez p4, :cond_24

    goto :goto_26

    :cond_24
    const-string p5, "/oplus_product/media/theme/default/"

    :goto_26
    invoke-virtual {p0, p5, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_73

    :cond_2f
    sget-object p4, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p4}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_39

    goto :goto_3a

    :cond_39
    const/4 p5, 0x0

    :goto_3a
    if-eqz p5, :cond_72

    const-string p4, "/data/oplus/uxicons/"

    invoke-virtual {p0, p4, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p3}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-nez p4, :cond_70

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget p4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {p4}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getDensityName(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_COMMON_ICON_THEME_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_73

    :cond_70
    move-object p0, p4

    goto :goto_73

    :cond_72
    const/4 p0, 0x0

    :goto_73
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;
    .registers 8

    if-eqz p5, :cond_2f

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {p5}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getDensityName(I)Ljava/lang/String;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_COMMON_ICON_THEME_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    if-nez p4, :cond_24

    goto :goto_26

    :cond_24
    const-string p5, "/oplus_product/media/theme/default/"

    :goto_26
    invoke-virtual {p0, p5, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_68

    :cond_2f
    if-eqz p6, :cond_3c

    const-string p4, "/data/oplus/uxicons/"

    invoke-virtual {p0, p4, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p3}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_3d

    :cond_3c
    const/4 p4, 0x0

    :goto_3d
    if-nez p4, :cond_67

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget p4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {p4}, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->getDensityName(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p6, Lcom/oplus/uxicon/ui/util/UxIconResPathUtil;->MY_COMMON_ICON_THEME_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/oplus/uxicon/ui/util/g;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_68

    :cond_67
    move-object p0, p4

    :goto_68
    return-object p0
.end method

.method public final a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 7

    if-nez p2, :cond_7

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_7
    :goto_7
    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, p5}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object p0

    new-instance p1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {p1, p3, p2, p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p1
.end method

.method public final a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 9

    if-nez p2, :cond_7

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_7
    :goto_7
    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result p1

    invoke-static {v1, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object p0

    new-instance p1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {p1, p3, p2, p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p1
.end method

.method public a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 10

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_1b

    if-nez p1, :cond_7

    goto :goto_1b

    :cond_7
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p3, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_198

    if-eqz p3, :cond_198

    if-nez p1, :cond_9

    goto/16 :goto_198

    :cond_9
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_10

    return-object v0

    :cond_10
    invoke-virtual {p0, p3, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->n:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42140000  # 37.0f

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_c5

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p1, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    if-gtz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, p1

    :goto_4b
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sget-object p3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p3

    invoke-static {p1, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    int-to-float p3, v3

    div-float/2addr p1, p3

    invoke-virtual {p0, p2, p4}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_96

    iput-object p2, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/oplus/uxicon/ui/util/g;->a:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/oplus/uxicon/ui/R$dimen;->ux_transparent_icon_fg_size:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3fa00000  # 1.25f

    mul-float/2addr p2, p3

    float-to-int v5, p2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    sget-object p3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p3}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result p3

    invoke-static {p2, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int v6, p2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_96
    iput-object p2, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v2}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v5

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    sget-object p3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p3}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result p3

    invoke-static {p2, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int v6, p2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_c5
    instance-of v4, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_e1

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_e1
    const/4 v4, 0x2

    if-eq v0, v4, :cond_152

    if-nez v0, :cond_e7

    goto :goto_152

    :cond_e7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_fa

    invoke-virtual {p0, p2, p4}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f7

    goto :goto_fa

    :cond_f7
    iput-object p2, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_164

    :cond_fa
    :goto_fa
    iput-object p2, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->a:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    if-gtz p1, :cond_11a

    goto :goto_11b

    :cond_11a
    move v3, p1

    :goto_11b
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sget-object p2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    int-to-float p2, v3

    div-float/2addr p1, p2

    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/oplus/uxicon/ui/R$dimen;->ux_transparent_icon_fg_size:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int v5, p2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sget-object p2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_152
    :goto_152
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p1, p3, p1

    if-ltz p1, :cond_16f

    invoke-virtual {p0, p2, p4}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_162

    goto :goto_16f

    :cond_162
    iput-object p2, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    :goto_164
    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_16f
    :goto_16f
    iput-object p2, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->a:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    sget p1, Lcom/oplus/uxicon/ui/R$dimen;->ux_transparent_icon_fg_size:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sget-object p2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_198
    :goto_198
    return-object v0
.end method

.method public a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_cd

    if-nez p3, :cond_7

    goto/16 :goto_cd

    :cond_7
    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/util/g;->f:Z

    if-nez v1, :cond_18

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/util/g;->f:Z

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/content/res/Resources;)V

    :cond_18
    const/4 v1, 0x0

    if-eqz p4, :cond_71

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result p4

    if-eqz p4, :cond_71

    new-instance p4, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/oplus/uxicon/ui/R$dimen;->ux_transparent_icon_fg_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    iget-object p3, p0, Lcom/oplus/uxicon/ui/util/g;->l:[Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-static {p3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    new-instance p3, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p3, p0, p2, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p3

    :cond_71
    new-instance p4, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p4, v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p1

    invoke-static {v2, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p4, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    iget-object p3, p0, Lcom/oplus/uxicon/ui/util/g;->l:[Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-static {p3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {p0, p2, v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p0

    :cond_cd
    :goto_cd
    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->j:[Ljava/lang/String;

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    return-object p0

    :cond_a
    const-string p0, ""

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "UxIconLoaderUtil"

    const-string p1, "checkConfigAndParams error: resource is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/util/g;->f:Z

    if-nez v1, :cond_1b

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/util/g;->f:Z

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/content/res/Resources;)V

    :cond_1b
    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v1, p2}, Lcom/oplus/uxicon/helper/IconConfig;->setPropertyTo(Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->initUxScreenInfo(Landroid/content/Context;Z)V

    return-void
.end method

.method public final a(Landroid/content/res/Resources;)V
    .registers 11

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    iget-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d5

    iget-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x96

    if-ne v5, v0, :cond_9d

    if-ne v4, v1, :cond_9d

    sget-object v5, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v5}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v5

    if-eqz v5, :cond_75

    if-eq v5, v2, :cond_68

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5b

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4d

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3f

    goto/16 :goto_d1

    :cond_3f
    sget v5, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_peculiar:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    goto/16 :goto_d1

    :cond_4d
    sget v5, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_sticker:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    goto/16 :goto_d1

    :cond_5b
    sget v5, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_leaf:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    goto :goto_d1

    :cond_68
    sget v5, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_octagon:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    goto :goto_d1

    :cond_75
    sget-object v5, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v5}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v5

    const/16 v7, 0x4b

    if-lt v5, v7, :cond_8c

    sget v5, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_circle:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    goto :goto_d1

    :cond_8c
    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v3, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float v5, v5

    invoke-virtual {v7, v8, v5}, Lcom/oplus/uxicon/ui/util/i;->a(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    goto :goto_d1

    :cond_9d
    iget-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_d1

    iget-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d1

    if-ne v0, v2, :cond_c7

    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object v5

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v3, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v6, 0x41000000  # 8.0f

    invoke-virtual {v5, v7, v6}, Lcom/oplus/uxicon/ui/util/i;->a(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    goto :goto_d1

    :cond_c7
    iget-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->l:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    :cond_d1
    :goto_d1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_d5
    sget-object p1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_e8

    iget-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->l:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    :cond_e8
    return-void
.end method

.method public final a(Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->copy()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p1

    sput-object p1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    const p1, 0x3f570a3d  # 0.84f

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->a(F)I

    move-result p1

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->m:Landroid/graphics/LightingColorFilter;

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const-string v0, "#FFFBFBFB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/util/g;->g:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->m:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2b
    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x96

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/uxicon/ui/util/i;->a(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/g;->e:Landroid/graphics/Path;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/util/g;->g:Z

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)Z
    .registers 6

    const/4 p0, 0x1

    :try_start_1
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/util/k;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p1, :cond_27

    iget-object p1, p1, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget-wide v0, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_1b

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0

    :catch_1b
    move-exception p1

    const-string v0, "isDefaultTheme error: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UxIconLoaderUtil"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_27
    return p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Z
    .registers 14

    if-eqz p2, :cond_7

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/f;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p2, :cond_13

    invoke-static {p2, v0}, Lcom/oplus/uxicon/ui/util/f;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000  # 1.0f

    mul-float/2addr p0, p1

    const/high16 p2, 0x40800000  # 4.0f

    div-float/2addr p0, p2

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, p2

    float-to-double p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x0

    move v1, p0

    move v2, p2

    :goto_34
    const/4 v3, 0x1

    :try_start_35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x3

    const/16 v6, 0xdc

    const/4 v7, 0x4

    if-ge v1, v4, :cond_5a

    move v8, p2

    move v4, v3

    :goto_41
    if-ge v4, v7, :cond_58

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-ge v9, v6, :cond_4f

    add-int/lit8 v8, v8, 0x1

    :cond_4f
    if-ne v4, v5, :cond_55

    if-le v8, v3, :cond_55

    add-int/lit8 v2, v2, 0x1

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_58
    add-int/2addr v1, p0

    goto :goto_34

    :cond_5a
    move v1, p0

    :goto_5b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v1, v4, :cond_8c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    move v8, p2

    :goto_68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v7

    sub-int/2addr v9, v3

    if-le v4, v9, :cond_8a

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-ge v9, v6, :cond_7c

    add-int/lit8 v8, v8, 0x1

    :cond_7c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v7

    if-ne v4, v9, :cond_87

    if-le v8, v3, :cond_87

    add-int/lit8 v2, v2, 0x1

    :cond_87
    add-int/lit8 v4, v4, -0x1

    goto :goto_68

    :cond_8a
    add-int/2addr v1, p0

    goto :goto_5b

    :cond_8c
    move p0, p1

    :goto_8d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge p0, v1, :cond_ae

    move v4, p2

    move v1, v3

    :goto_95
    if-ge v1, v7, :cond_ac

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-ge v8, v6, :cond_a3

    add-int/lit8 v4, v4, 0x1

    :cond_a3
    if-ne v1, v5, :cond_a9

    if-le v4, v3, :cond_a9

    add-int/lit8 v2, v2, 0x1

    :cond_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    :cond_ac
    add-int/2addr p0, p1

    goto :goto_8d

    :cond_ae
    move p0, p1

    :goto_af
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge p0, v1, :cond_e0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    move v4, p2

    :goto_bc
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v7

    sub-int/2addr v5, v3

    if-le v1, v5, :cond_de

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ge v5, v6, :cond_d0

    add-int/lit8 v4, v4, 0x1

    :cond_d0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5
    :try_end_d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_d4} :catch_e0

    sub-int/2addr v5, v7

    if-ne v1, v5, :cond_db

    if-le v4, v3, :cond_db

    add-int/lit8 v2, v2, 0x1

    :cond_db
    add-int/lit8 v1, v1, -0x1

    goto :goto_bc

    :cond_de
    add-int/2addr p0, p1

    goto :goto_af

    :catch_e0
    :cond_e0
    if-lt v2, p3, :cond_e3

    move p2, v3

    :cond_e3
    return p2
.end method

.method public final b(Landroid/content/res/Resources;)I
    .registers 3

    sget p0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIconSizeEndId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    sget-object p1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    sget-object p0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result p0

    :cond_15
    return p0
.end method

.method public b(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "UxIconLoaderUtil"

    const/4 v11, 0x0

    if-eqz v1, :cond_310

    if-eqz v8, :cond_310

    if-nez v9, :cond_13

    goto/16 :goto_310

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v7, v9}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    :try_start_1f
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v7, Lcom/oplus/uxicon/ui/util/g;->n:Landroid/content/res/Resources;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_3b

    :catch_26
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResourcesForApplication error:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-le v0, v3, :cond_64

    :try_start_41
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_5c

    :try_start_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity info:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_5a

    goto :goto_65

    :catch_5a
    move-exception v0

    goto :goto_5e

    :catch_5c
    move-exception v0

    move-object v3, v11

    :goto_5e
    const-string v4, "get activity info for s device error: "

    invoke-static {v4, v0, v10}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_65

    :cond_64
    move-object v3, v11

    :goto_65
    const/4 v4, 0x0

    if-nez v3, :cond_86

    :try_start_68
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_86

    :catch_71
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get activity info from pm error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    if-eqz v3, :cond_310

    if-nez v12, :cond_8c

    goto/16 :goto_310

    :cond_8c
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_92
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_96} :catch_310

    :try_start_96
    invoke-virtual {v7, v8, v1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    iput-object v11, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iput-object v11, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    const-string v1, ""

    iget v2, v13, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a1} :catch_2ed

    const/4 v3, 0x1

    if-eq v0, v2, :cond_b4

    :try_start_a4
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    move-object v6, v1

    goto :goto_b6

    :cond_ae
    const-string v1, "dialer_"
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b0} :catch_b1

    goto :goto_b4

    :catch_b1
    move-exception v0

    goto/16 :goto_2ef

    :cond_b4
    :goto_b4
    move-object v6, v1

    move v4, v3

    :goto_b6
    :try_start_b6
    iget-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    sget-object v2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-eqz v4, :cond_2a8

    if-ltz v1, :cond_211

    iget-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_211

    const/4 v4, 0x2

    if-ne v1, v4, :cond_18a

    invoke-static {v14, v8}, Lcom/oplus/uxicon/ui/util/e;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v16
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_e0} :catch_2ed

    if-eqz v16, :cond_110

    :try_start_e2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Lcom/oplus/uxicon/ui/util/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2a5

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_10e} :catch_b1

    goto/16 :goto_2a6

    :cond_110
    :try_start_110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Lcom/oplus/uxicon/ui/util/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    move-object v9, v6

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_13f

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1

    goto/16 :goto_2a6

    :cond_13f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1

    goto/16 :goto_2a6

    :cond_18a
    move-object v9, v6

    if-eqz v1, :cond_1c2

    if-ne v1, v2, :cond_190

    goto :goto_1c2

    :cond_190
    if-ne v1, v3, :cond_2a5

    invoke-static {v14, v8}, Lcom/oplus/uxicon/ui/util/e;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Lcom/oplus/uxicon/ui/util/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2a5

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1

    goto/16 :goto_2a6

    :cond_1c2
    :goto_1c2
    invoke-static {v14, v8}, Lcom/oplus/uxicon/ui/util/e;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1

    goto/16 :goto_2a6

    :cond_211
    move-object v9, v6

    iget-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->i:Ljava/util/ArrayList;

    sget-object v2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2a5

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2a5

    invoke-static {v14, v8}, Lcom/oplus/uxicon/ui/util/e;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Lcom/oplus/uxicon/ui/util/g;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2a5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1

    goto :goto_2a6

    :cond_25b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/uxicon/ui/util/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1

    goto :goto_2a6

    :cond_2a5
    const/4 v1, 0x0

    :goto_2a6
    move-object v11, v1

    goto :goto_2d2

    :cond_2a8
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v1

    invoke-virtual {v1, v12, v14, v0, v13}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2eb

    invoke-static {v14, v8}, Lcom/oplus/uxicon/ui/util/e;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c9

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1

    goto :goto_2a6

    :cond_2c9
    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    iget-object v2, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1, v2, v8, v14}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v1
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_2d1} :catch_2ed

    goto :goto_2a6

    :goto_2d2
    :try_start_2d2
    iget-object v1, v7, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_303

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v1

    invoke-virtual {v1, v12, v14, v0, v13}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e9

    sget-object v1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v7, v1, v0, v8, v14}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v11
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2e8} :catch_b1

    goto :goto_303

    :cond_2e9
    const/4 v0, 0x0

    return-object v0

    :cond_2eb
    const/4 v0, 0x0

    return-object v0

    :catch_2ed
    move-exception v0

    const/4 v11, 0x0

    :goto_2ef
    const-string v1, "loadIcon error: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_303
    :goto_303
    if-eqz v11, :cond_30e

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v12, v11, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_30e
    const/4 v0, 0x0

    return-object v0

    :catch_310
    :cond_310
    :goto_310
    return-object v11
.end method

.method public b(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .registers 17

    move-object v3, p3

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getItemIndexInCommonStyleConfigArray(I)I

    move-result v5

    invoke-static {p3}, Lcom/oplus/uxicon/ui/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->isCommonThemeStyle(I)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getMaterialThemeConfigPos()I

    move-result v0

    if-eq v5, v0, :cond_67

    const/4 v0, 0x0

    :try_start_2e
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_37} :catch_37

    :catch_37
    if-eqz v0, :cond_67

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getInstance()Lcom/oplus/uxicon/ui/util/UxIconPackLoader;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2, p3, v4, v0}, Lcom/oplus/uxicon/ui/util/UxIconPackLoader;->getOriginalIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_67

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual {p0, p2, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object v0

    return-object v0

    :cond_67
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->isCommonThemeStyle(I)Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getCustomThemeConfigPos()I

    move-result v0

    if-eq v5, v0, :cond_94

    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getRectangleThemeConfigPos()I

    move-result v0

    if-ne v5, v0, :cond_89

    goto :goto_94

    :cond_89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_94
    :goto_94
    invoke-virtual/range {p0 .. p4}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_99
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/f;->c(Ljava/io/File;)V

    return-object v1

    :cond_17
    invoke-static {v0}, Lcom/oplus/uxicon/ui/util/f;->b(Ljava/io/File;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_2c

    invoke-virtual {p0, p1, p2}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_24

    return-object v1

    :cond_24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/util/f;->a(Ljava/io/File;Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object p0

    :cond_2c
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 9

    if-nez p2, :cond_7

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_7
    :goto_7
    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    invoke-direct {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v2, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result p1

    invoke-static {v1, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->e:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    move-result-object p0

    new-instance p1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    invoke-direct {p1, p3, p2, p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V

    return-object p1
.end method

.method public b(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 10

    if-eqz p2, :cond_80

    if-eqz p3, :cond_80

    if-nez p1, :cond_8

    goto/16 :goto_80

    :cond_8
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p3, p1}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/Context;Lcom/oplus/uxicon/helper/IconConfig;)V

    sget-object p1, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_76

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sFgSizeEndId:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p1, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    if-gtz p1, :cond_33

    goto :goto_34

    :cond_33
    move v0, p1

    :goto_34
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sget-object p3, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p3

    invoke-static {p1, p3}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x3f800000  # 1.0f

    mul-float/2addr p1, p3

    int-to-float p3, v0

    div-float/2addr p1, p3

    invoke-virtual {p0, p2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v1}, Lcom/oplus/uxicon/ui/util/g;->b(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result v4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v0

    invoke-static {p3, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int v5, p3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_76
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0

    :cond_80
    :goto_80
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->j:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final b(I)Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->k:[Ljava/lang/String;

    array-length v0, p0

    if-ge p1, v0, :cond_8

    aget-object p0, p0, p1

    return-object p0

    :cond_8
    const-string p0, ""

    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uxicon/ui/util/g;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public c(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/uxicon/ui/util/g;->a(Lcom/oplus/uxicon/helper/IconConfig;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->j:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final c(Landroid/content/res/Resources;)V
    .registers 8

    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconResLoader;->getCommonStyleConfigRangeArray(Landroid/content/res/Resources;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_19

    aget v4, v0, v3

    iget-object v5, p0, Lcom/oplus/uxicon/ui/util/g;->h:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_19
    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconResLoader;->getSpecialStyleConfigRangeArray(Landroid/content/res/Resources;)[I

    move-result-object v0

    if-eqz v0, :cond_30

    array-length v2, v0

    :goto_20
    if-ge v1, v2, :cond_30

    aget v3, v0, v1

    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/g;->i:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_30
    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconResLoader;->getCommonStylePrefixArray(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->j:[Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconResLoader;->getSpecialStylePrefixArray(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->k:[Ljava/lang/String;

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.uxicon_exp"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/uxicon/helper/IconResLoader;->getCommonStylePathArray(Landroid/content/res/Resources;Z)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->l:[Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconResLoader;->getSpecialStylePathArray(Landroid/content/res/Resources;)[Ljava/lang/String;

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_81

    sget-object v0, Lcom/oplus/uxicon/ui/util/g;->p:Lcom/oplus/uxicon/helper/IconConfig;

    if-nez v0, :cond_8

    goto/16 :goto_81

    :cond_8
    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/util/g;->g:Z

    if-eqz v1, :cond_67

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->isDarkModeIcon()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_67

    :cond_13
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_28

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_66

    :cond_28
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3f

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v0, :cond_66

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/uxicon/ui/util/g;->c(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_61

    :try_start_45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTint"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    const-string v0, "UxIconLoaderUtil"

    const-string v1, "setDarkFilterToDrawable mTint not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_60} :catch_61

    return-void

    :catch_61
    :cond_61
    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->m:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_66
    :goto_66
    return-void

    :cond_67
    :goto_67
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/LightingColorFilter;

    if-eqz v1, :cond_81

    check-cast v0, Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0}, Landroid/graphics/LightingColorFilter;->getColorMultiply()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/g;->m:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Landroid/graphics/LightingColorFilter;->getColorMultiply()I

    move-result p0

    if-ne v0, p0, :cond_81

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->e:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/g;->d:Landroid/graphics/Path;

    return-void
.end method
