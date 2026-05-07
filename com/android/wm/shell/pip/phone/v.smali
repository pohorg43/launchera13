.class public final synthetic Lcom/android/wm/shell/pip/phone/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/v;->a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iput p2, p0, Lcom/android/wm/shell/pip/phone/v;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/v;->a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget p0, p0, Lcom/android/wm/shell/pip/phone/v;->b:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->g(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;I)V

    return-void
.end method
