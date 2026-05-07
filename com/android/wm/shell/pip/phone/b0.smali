.class public final synthetic Lcom/android/wm/shell/pip/phone/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field public final synthetic b:Landroid/app/RemoteAction;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/app/RemoteAction;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/b0;->a:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/b0;->b:Landroid/app/RemoteAction;

    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/b0;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/b0;->a:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/b0;->b:Landroid/app/RemoteAction;

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/b0;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->i(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/app/RemoteAction;ZLandroid/view/View;)V

    return-void
.end method
