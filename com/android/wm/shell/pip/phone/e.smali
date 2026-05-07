.class public final synthetic Lcom/android/wm/shell/pip/phone/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/e;->a:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iput-wide p2, p0, Lcom/android/wm/shell/pip/phone/e;->b:J

    iput p4, p0, Lcom/android/wm/shell/pip/phone/e;->c:I

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/e;->d:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/pip/phone/e;->e:I

    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/e;->f:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput p8, p0, Lcom/android/wm/shell/pip/phone/e;->g:I

    iput p9, p0, Lcom/android/wm/shell/pip/phone/e;->h:I

    iput-wide p10, p0, Lcom/android/wm/shell/pip/phone/e;->i:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/e;->a:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    iget-wide v1, p0, Lcom/android/wm/shell/pip/phone/e;->b:J

    iget v3, p0, Lcom/android/wm/shell/pip/phone/e;->c:I

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/e;->d:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/wm/shell/pip/phone/e;->e:I

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/e;->f:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v7, p0, Lcom/android/wm/shell/pip/phone/e;->g:I

    iget v8, p0, Lcom/android/wm/shell/pip/phone/e;->h:I

    iget-wide v9, p0, Lcom/android/wm/shell/pip/phone/e;->i:J

    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;->f(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    return-void
.end method
