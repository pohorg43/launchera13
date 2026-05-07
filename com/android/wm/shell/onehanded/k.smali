.class public final synthetic Lcom/android/wm/shell/onehanded/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/k;->a:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/onehanded/k;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/onehanded/k;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/k;->a:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/onehanded/k;->b:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/k;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->b(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;ZZ)V

    return-void
.end method
