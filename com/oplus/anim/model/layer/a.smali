.class public final synthetic Lcom/oplus/anim/model/layer/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/model/layer/BaseLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/a;->a:Lcom/oplus/anim/model/layer/BaseLayer;

    return-void
.end method


# virtual methods
.method public final onValueChanged()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/a;->a:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-static {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->a(Lcom/oplus/anim/model/layer/BaseLayer;)V

    return-void
.end method
