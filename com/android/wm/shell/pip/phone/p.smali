.class public final synthetic Lcom/android/wm/shell/pip/phone/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/pip/phone/p;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/pip/phone/p;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/phone/p;-><init>()V

    sput-object v0, Lcom/android/wm/shell/pip/phone/p;->a:Lcom/android/wm/shell/pip/phone/p;

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

    check-cast p1, Lcom/android/wm/shell/pip/IPipAnimationListener;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->b(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    return-void
.end method
