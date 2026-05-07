.class public Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# static fields
.field public static b:Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;


# instance fields
.field public a:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    return-void
.end method

.method public static a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;
    .registers 1

    sget-object v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b:Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    invoke-direct {v0}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;-><init>()V

    sput-object v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b:Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    :cond_b
    sget-object v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b:Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/Rect;F)Landroid/graphics/Path;
    .registers 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {p0, v0, p2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    return-object p0
.end method
