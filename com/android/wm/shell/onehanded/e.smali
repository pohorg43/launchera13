.class public final synthetic Lcom/android/wm/shell/onehanded/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/onehanded/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/onehanded/e;

    invoke-direct {v0}, Lcom/android/wm/shell/onehanded/e;-><init>()V

    sput-object v0, Lcom/android/wm/shell/onehanded/e;->a:Lcom/android/wm/shell/onehanded/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;->a(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method
