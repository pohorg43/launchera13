.class public Lcom/oplus/wm/shell/util/FwkResIdLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "android"

.field private static final sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/wm/shell/util/FwkResIdLoader;->sMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anim(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "anim"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static animator(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "animator"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static array(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "array"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static attr(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "attr"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bool(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "bool"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static color(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "color"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static dimen(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "dimen"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static drawable(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "drawable"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static fraction(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "fraction"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string v0, "_"

    invoke-static {p1, v0, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/wm/shell/util/FwkResIdLoader;->sMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2f

    const-string v2, "android"

    invoke-virtual {p0, p2, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-enter v1

    :try_start_23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return p0

    :catchall_2c
    move-exception p0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw p0

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public static id(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static integer(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "integer"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static interpolator(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "interpolator"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static layout(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "layout"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static mipmap(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "mipmap"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static raw(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "raw"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static string(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static style(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "style"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static styleable(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "styleable"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static styleableArray(Landroid/content/res/Resources;Ljava/lang/String;)[I
    .registers 3

    const-string v0, "styleable"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static xml(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 3

    const-string v0, "xml"

    invoke-static {p0, v0, p1}, Lcom/oplus/wm/shell/util/FwkResIdLoader;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
