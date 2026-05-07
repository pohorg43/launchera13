.class public final synthetic Lcom/android/wm/shell/pip/phone/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(IZLjava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip/phone/a;->a:I

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/a;->b:Z

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/pip/phone/a;->a:I

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/a;->b:Z

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/a;->c:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->b(IZLjava/lang/Runnable;Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V

    return-void
.end method
