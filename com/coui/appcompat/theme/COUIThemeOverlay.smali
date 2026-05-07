.class public Lcom/coui/appcompat/theme/COUIThemeOverlay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:Z

.field public static e:Z

.field public static f:Z


# instance fields
.field public a:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "com.oplus.inner.content.res.ConfigurationWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move v2, v1

    goto :goto_a

    :catch_9
    move v2, v0

    :goto_a
    if-eqz v2, :cond_f

    const-string v2, "com.oplus.inner.content.res.ConfigurationWrapper"

    goto :goto_2f

    :cond_f
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->a()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/coui/appcompat/version/COUICompatUtil;->e:[I

    array-length v2, v2

    new-array v3, v2, [C

    move v4, v0

    :goto_1c
    if-ge v4, v2, :cond_2b

    sget-object v5, Lcom/coui/appcompat/version/COUICompatUtil;->e:[I

    aget v5, v5, v4

    sget-object v6, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    aget-char v5, v6, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2b
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    sput-object v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v4, v3, [C

    fill-array-data v4, :array_172

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    new-array v3, v3, [C

    fill-array-data v3, :array_17a

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_55

    :cond_53
    move v3, v0

    goto :goto_56

    :cond_55
    :goto_55
    move v3, v1

    :goto_56
    sput-boolean v3, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d:Z

    const/4 v3, 0x6

    new-array v4, v3, [C

    fill-array-data v4, :array_182

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    new-array v4, v3, [C

    fill-array-data v4, :array_18c

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    new-array v3, v3, [C

    fill-array-data v3, :array_196

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    goto :goto_89

    :cond_87
    move v3, v0

    goto :goto_8a

    :cond_89
    :goto_89
    move v3, v1

    :goto_8a
    sput-boolean v3, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f:Z

    const/4 v3, 0x7

    new-array v4, v3, [C

    fill-array-data v4, :array_1a0

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1ac

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1b8

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1c4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1d0

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v3, v3, [C

    fill-array-data v3, :array_1dc

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    goto :goto_ea

    :cond_e8
    move v2, v0

    goto :goto_eb

    :cond_ea
    :goto_ea
    move v2, v1

    :goto_eb
    if-eqz v2, :cond_f5

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->a()I

    move-result v2

    if-lez v2, :cond_f5

    move v2, v1

    goto :goto_f6

    :cond_f5
    move v2, v0

    :goto_f6
    sput-boolean v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e:Z

    :try_start_f8
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ro.oplus.theme.version"

    aput-object v4, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_126

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_125} :catch_164

    goto :goto_127

    :cond_126
    move v3, v0

    :goto_127
    if-nez v3, :cond_16e

    :try_start_129
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->a()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/coui/appcompat/version/COUICompatUtil;->g:[I

    array-length v5, v5

    new-array v6, v5, [C

    move v7, v0

    :goto_138
    if-ge v7, v5, :cond_147

    sget-object v8, Lcom/coui/appcompat/version/COUICompatUtil;->g:[I

    aget v8, v8, v7

    sget-object v9, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    aget-char v8, v9, v8

    aput-char v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_138

    :cond_147
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_161} :catch_162

    goto :goto_16e

    :catch_162
    move-exception v0

    goto :goto_167

    :catch_164
    move-exception v1

    move v3, v0

    move-object v0, v1

    :goto_167
    const-string v1, "getCompatVersion e: "

    const-string v2, "COUIThemeOverlay"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_16e
    :goto_16e
    sput v3, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c:I

    return-void

    nop

    :array_172
    .array-data 2
        0x4fs
        0x50s
        0x50s
        0x4fs
    .end array-data

    :array_17a
    .array-data 2
        0x4fs
        0x70s
        0x70s
        0x6fs
    .end array-data

    :array_182
    .array-data 2
        0x52s
        0x45s
        0x41s
        0x4cs
        0x4ds
        0x45s
    .end array-data

    :array_18c
    .array-data 2
        0x52s
        0x65s
        0x61s
        0x6cs
        0x6ds
        0x65s
    .end array-data

    :array_196
    .array-data 2
        0x72s
        0x65s
        0x61s
        0x6cs
        0x6ds
        0x65s
    .end array-data

    :array_1a0
    .array-data 2
        0x4fs
        0x6es
        0x65s
        0x50s
        0x6cs
        0x75s
        0x73s
    .end array-data

    nop

    :array_1ac
    .array-data 2
        0x4fs
        0x4es
        0x45s
        0x50s
        0x4cs
        0x55s
        0x53s
    .end array-data

    nop

    :array_1b8
    .array-data 2
        0x47s
        0x41s
        0x4cs
        0x49s
        0x4cs
        0x45s
        0x49s
    .end array-data

    nop

    :array_1c4
    .array-data 2
        0x67s
        0x61s
        0x6cs
        0x69s
        0x6cs
        0x65s
        0x69s
    .end array-data

    nop

    :array_1d0
    .array-data 2
        0x46s
        0x41s
        0x52s
        0x41s
        0x44s
        0x41s
        0x59s
    .end array-data

    nop

    :array_1dc
    .array-data 2
        0x66s
        0x61s
        0x72s
        0x61s
        0x64s
        0x61s
        0x79s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static d()Lcom/coui/appcompat/theme/COUIThemeOverlay;
    .registers 1

    sget-object v0, Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;->a:Lcom/coui/appcompat/theme/COUIThemeOverlay;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_219

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_f6

    :try_start_15
    const-string v5, "android.content.res.OplusBaseConfiguration"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move v5, v4

    goto :goto_1d

    :catch_1c
    move v5, v0

    :goto_1d
    if-nez v5, :cond_21

    goto/16 :goto_f6

    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v5

    if-eqz v5, :cond_32

    iget-wide v5, v5, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    goto :goto_63

    :cond_32
    :try_start_32
    sget-object v5, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_62

    const-string v6, "getThemeChangedFlags"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/res/Configuration;

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_59} :catch_5a

    goto :goto_63

    :catch_5a
    move-exception v5

    const-string v6, "isRejectTheme e: "

    const-string v7, "COUIThemeOverlay"

    invoke-static {v6, v5, v7}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_62
    move-wide v5, v2

    :goto_63
    const-wide/16 v7, 0x1

    and-long/2addr v7, v5

    cmp-long v7, v7, v2

    if-eqz v7, :cond_e9

    const-wide/16 v7, 0x100

    and-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-eqz v5, :cond_ba

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    const-string v7, "my_company/media/theme/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_89

    goto :goto_e9

    :cond_89
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_96

    move v5, v4

    goto :goto_ea

    :cond_96
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_e9

    array-length v6, v6

    if-nez v6, :cond_a0

    goto :goto_e9

    :cond_a0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "custom_theme_path_setting"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e9

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    goto :goto_ea

    :cond_ba
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c5

    goto :goto_e9

    :cond_c5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v6

    if-eqz v6, :cond_d6

    iget v6, v6, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    goto :goto_d7

    :cond_d6
    move v6, v0

    :goto_d7
    const-string v7, "data/theme/"

    if-lez v6, :cond_df

    invoke-static {v7, v6}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :cond_df
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    goto :goto_ea

    :cond_e9
    :goto_e9
    move v5, v0

    :goto_ea
    if-eqz v5, :cond_f6

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v5, 0x20

    if-eq v1, v5, :cond_f6

    move v1, v4

    goto :goto_f7

    :cond_f6
    :goto_f6
    move v1, v0

    :goto_f7
    if-eqz v1, :cond_fb

    goto/16 :goto_219

    :cond_fb
    new-array v1, v4, [I

    sget v5, Lcom/support/appcompat/R$attr;->couiThemeIdentifier:I

    aput v5, v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b(Landroid/content/res/Configuration;)J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    and-long/2addr v8, v6

    long-to-int v1, v8

    const-wide/32 v8, 0xff0000

    and-long/2addr v8, v6

    long-to-int v8, v8

    sget v9, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c:I

    const/16 v10, 0x2ee0

    if-ge v9, v10, :cond_12d

    goto :goto_12e

    :cond_12d
    move v4, v0

    :goto_12e
    cmp-long v2, v6, v2

    if-eqz v2, :cond_219

    if-nez v1, :cond_138

    if-nez v8, :cond_138

    goto/16 :goto_219

    :cond_138
    const/high16 v2, 0x20000

    if-ne v8, v2, :cond_147

    sget v1, Lcom/support/appcompat/R$id;->coui_global_theme:I

    sget v2, Lcom/support/appcompat/R$style;->COUIOverlay_Theme_Single_First:I

    iget-object v3, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_219

    :cond_147
    const/high16 v2, 0x10000

    const-string v3, "array"

    const/4 v6, -0x1

    if-ne v8, v2, :cond_163

    sget-boolean v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e:Z

    if-eqz v2, :cond_15f

    if-eqz v4, :cond_157

    const-string v2, "coui_theme_arrays_single_repatch_p"

    goto :goto_159

    :cond_157
    const-string v2, "coui_theme_arrays_single_patch_p"

    :goto_159
    invoke-virtual {p0, p1, v2, v3}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1f8

    :cond_15f
    sget v2, Lcom/support/appcompat/R$array;->coui_theme_arrays_single:I

    goto/16 :goto_1f8

    :cond_163
    const/high16 v2, 0x40000

    if-ne v8, v2, :cond_16b

    sget v1, Lcom/support/appcompat/R$array;->coui_theme_arrays_default_patch:I

    goto/16 :goto_1f3

    :cond_16b
    const/high16 v2, 0x100000

    if-eqz v8, :cond_176

    if-ne v8, v2, :cond_172

    goto :goto_176

    :cond_172
    move v2, v0

    move v1, v6

    goto/16 :goto_1f8

    :cond_176
    :goto_176
    if-lez v1, :cond_1f5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_180

    goto/16 :goto_1f5

    :cond_180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c:I

    if-le v7, v10, :cond_1a0

    sget v2, Lcom/support/appcompat/R$array;->coui_theme_arrays_ids:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt v3, v1, :cond_19b

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_19c

    :cond_19b
    move v1, v0

    :goto_19c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1f3

    :cond_1a0
    if-ne v7, v10, :cond_1cf

    sget-boolean v7, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f:Z

    if-eqz v7, :cond_1a9

    const-string v7, "coui_theme_arrays_ids_patch_r"

    goto :goto_1ab

    :cond_1a9
    const-string v7, "coui_theme_arrays_ids_patch_o"

    :goto_1ab
    invoke-virtual {p0, p1, v7, v3}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-boolean v7, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d:Z

    if-eqz v7, :cond_1b7

    if-ne v8, v2, :cond_1b7

    sget v3, Lcom/support/appcompat/R$array;->coui_theme_arrays_ids:I

    :cond_1b7
    if-eqz v3, :cond_1f5

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt v3, v1, :cond_1ca

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_1cb

    :cond_1ca
    move v1, v0

    :goto_1cb
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1f3

    :cond_1cf
    sget-boolean v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f:Z

    if-eqz v2, :cond_1d6

    const-string v2, "coui_theme_arrays_ids_repatch_r"

    goto :goto_1d8

    :cond_1d6
    const-string v2, "coui_theme_arrays_ids_repatch_o"

    :goto_1d8
    invoke-virtual {p0, p1, v2, v3}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1f5

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt v3, v1, :cond_1ef

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_1f0

    :cond_1ef
    move v1, v0

    :goto_1f0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1f3
    move v2, v1

    goto :goto_1f6

    :cond_1f5
    :goto_1f5
    move v2, v0

    :goto_1f6
    add-int/lit8 v1, v5, -0x1

    :goto_1f8
    if-eqz v2, :cond_219

    if-ne v1, v6, :cond_1fd

    goto :goto_219

    :cond_1fd
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-le v3, v1, :cond_216

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v3, Lcom/support/appcompat/R$id;->coui_global_theme:I

    iget-object v4, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_216
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_219
    :goto_219
    iget-object v1, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22d

    iget-object v1, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_219

    :cond_22d
    return-void
.end method

.method public b(Landroid/content/res/Configuration;)J
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "android.content.res.OplusBaseConfiguration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move v2, v0

    goto :goto_a

    :catch_9
    move v2, v1

    :goto_a
    const-wide/16 v3, 0x0

    if-nez v2, :cond_f

    return-wide v3

    :cond_f
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    if-eqz p0, :cond_18

    iget-wide v3, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    goto :goto_57

    :cond_18
    :try_start_18
    sget-object p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_57

    const-string v2, "getMaterialColor"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v5, v1

    invoke-virtual {p0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3f} :catch_40

    goto :goto_57

    :catch_40
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCOUITheme e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIThemeOverlay"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    return-wide v3
.end method

.method public final c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;
    .registers 3

    const-class p0, Landroid/content/res/OplusBaseConfiguration;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    check-cast p1, Landroid/content/res/OplusBaseConfiguration;

    if-nez p1, :cond_12

    return-object v0

    :cond_12
    iget-object p0, p1, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    return-object p0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2a

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_2a

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method
