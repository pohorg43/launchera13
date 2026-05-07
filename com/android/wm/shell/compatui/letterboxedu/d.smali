.class public final synthetic Lcom/android/wm/shell/compatui/letterboxedu/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/d;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/d;->a:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->a(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
