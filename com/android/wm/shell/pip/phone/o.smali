.class public final synthetic Lcom/android/wm/shell/pip/phone/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/pip/phone/o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/pip/phone/o;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/phone/o;-><init>()V

    sput-object v0, Lcom/android/wm/shell/pip/phone/o;->a:Lcom/android/wm/shell/pip/phone/o;

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

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->a(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    return-void
.end method
