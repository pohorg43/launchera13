.class public final synthetic Lcom/android/wm/shell/pip/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/pip/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/pip/d;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/d;-><init>()V

    sput-object v0, Lcom/android/wm/shell/pip/d;->a:Lcom/android/wm/shell/pip/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/pip/PipAnimationController;->a()Landroid/animation/AnimationHandler;

    move-result-object p0

    return-object p0
.end method
