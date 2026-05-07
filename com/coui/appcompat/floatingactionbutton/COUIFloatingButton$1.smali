.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v0, v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;->a(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/16 v0, 0x12c

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->r(ZZIZ)V

    :cond_14
    return p1

    :cond_15
    return v1
.end method
