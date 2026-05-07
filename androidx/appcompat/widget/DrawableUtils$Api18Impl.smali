.class Landroidx/appcompat/widget/DrawableUtils$Api18Impl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DrawableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api18Impl"
.end annotation


# static fields
.field private static final sBottom:Ljava/lang/reflect/Field;

.field private static final sGetOpticalInsets:Ljava/lang/reflect/Method;

.field private static final sLeft:Ljava/lang/reflect/Field;

.field private static final sReflectionSuccessful:Z

.field private static final sRight:Ljava/lang/reflect/Field;

.field private static final sTop:Ljava/lang/reflect/Field;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    const-string v3, "android.graphics.Insets"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-string v5, "getOpticalInsets"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_13} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_41
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_13} :catch_3d

    :try_start_13
    const-string v5, "left"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_19} :catch_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_19} :catch_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_19} :catch_37

    :try_start_19
    const-string/jumbo v6, "top"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_20} :catch_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_20} :catch_33
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_20} :catch_31

    :try_start_20
    const-string/jumbo v7, "right"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_27} :catch_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_27} :catch_2f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20 .. :try_end_27} :catch_2f

    :try_start_27
    const-string v8, "bottom"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_2d} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_2d} :catch_49
    .catch Ljava/lang/NoSuchFieldException; {:try_start_27 .. :try_end_2d} :catch_49

    move v8, v0

    goto :goto_4b

    :catch_2f
    move-object v7, v2

    goto :goto_49

    :catch_31
    move-object v6, v2

    goto :goto_48

    :catch_33
    move-object v6, v2

    goto :goto_48

    :catch_35
    move-object v6, v2

    goto :goto_48

    :catch_37
    move-object v5, v2

    goto :goto_3f

    :catch_39
    move-object v5, v2

    goto :goto_43

    :catch_3b
    move-object v5, v2

    goto :goto_47

    :catch_3d
    move-object v4, v2

    move-object v5, v4

    :goto_3f
    move-object v6, v5

    goto :goto_48

    :catch_41
    move-object v4, v2

    move-object v5, v4

    :goto_43
    move-object v6, v5

    goto :goto_48

    :catch_45
    move-object v4, v2

    move-object v5, v4

    :goto_47
    move-object v6, v5

    :goto_48
    move-object v7, v6

    :catch_49
    :goto_49
    move v8, v1

    move-object v3, v2

    :goto_4b
    if-eqz v8, :cond_5a

    sput-object v4, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    sput-object v5, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    sput-object v6, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    sput-object v7, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    sput-object v3, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    sput-boolean v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    goto :goto_66

    :cond_5a
    sput-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    sput-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    sput-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    sput-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    sput-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    sput-boolean v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    :goto_66
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 1
    .param p0  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object p0
.end method
