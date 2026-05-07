.class public final synthetic Lcom/oplus/splitscreen/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/oplus/splitscreen/SplitControlBarMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/c;->a:Lcom/oplus/splitscreen/SplitControlBarMenu;

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/c;->a:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->c(Lcom/oplus/splitscreen/SplitControlBarMenu;Z)V

    return-void
.end method
