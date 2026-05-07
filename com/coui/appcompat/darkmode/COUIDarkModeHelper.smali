.class public Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;,
        Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$COUIDarkColorObserver;,
        Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;
    }
.end annotation


# instance fields
.field public a:F

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$ICOUIDarkColorObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->a:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    return-void
.end method

.method public static c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;
    .registers 1

    sget-object v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;->a:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .registers 9

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_DialogBgMaxL"

    const/high16 v2, -0x40800000  # -1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "DarkMode_BackgroundMaxL"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->a:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "DarkMode_ForegroundMinL"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$1;-><init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;

    invoke-direct {v2, p0, v5, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$2;-><init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;

    invoke-direct {v2, p0, v5, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$3;-><init>(Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()I
    .registers 14

    iget p0, p0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->a:F

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, -0x1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->colorToLAB(I[D)V

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/high16 v5, 0x4059000000000000L  # 100.0

    sub-double/2addr v5, v3

    aget-wide v3, v0, v2

    cmpg-double v3, v5, v3

    if-gez v3, :cond_47

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v3, p0, v3

    if-eqz v3, :cond_25

    float-to-double v3, p0

    const-wide/high16 v7, 0x4049000000000000L  # 50.0

    div-double/2addr v5, v7

    const/high16 v7, 0x42480000  # 50.0f

    sub-float/2addr v7, p0

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v5, v3

    :cond_25
    aput-wide v5, v0, v2

    aget-wide v7, v0, v2

    const/4 p0, 0x1

    aget-wide v9, v0, p0

    const/4 p0, 0x2

    aget-wide v11, v0, p0

    invoke-static/range {v7 .. v12}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result p0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :cond_47
    return v1
.end method
