.class public final synthetic Lcom/android/wm/shell/startingsurface/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/startingsurface/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/startingsurface/f;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/f;-><init>()V

    sput-object v0, Lcom/android/wm/shell/startingsurface/f;->a:Lcom/android/wm/shell/startingsurface/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer;->b(I)Z

    move-result p0

    return p0
.end method
