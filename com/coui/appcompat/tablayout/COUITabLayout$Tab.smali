.class public final Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/tablayout/COUITabLayout;

.field public b:Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->u(Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;Z)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->a()V

    :cond_7
    return-void
.end method
