.class public final synthetic Lcom/android/wm/shell/pip/phone/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/k;->a:Z

    iput p2, p0, Lcom/android/wm/shell/pip/phone/k;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/k;->a:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/k;->b:I

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->d(ZILcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method
