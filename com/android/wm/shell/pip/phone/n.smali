.class public final synthetic Lcom/android/wm/shell/pip/phone/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip/phone/n;->a:I

    iput p2, p0, Lcom/android/wm/shell/pip/phone/n;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/phone/n;->a:I

    iget p0, p0, Lcom/android/wm/shell/pip/phone/n;->b:I

    check-cast p1, Lcom/android/wm/shell/pip/IPipAnimationListener;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->c(IILcom/android/wm/shell/pip/IPipAnimationListener;)V

    return-void
.end method
