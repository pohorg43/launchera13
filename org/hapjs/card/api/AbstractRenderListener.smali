.class public abstract Lorg/hapjs/card/api/AbstractRenderListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/hapjs/card/api/IRenderListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderException(ILjava/lang/String;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Lorg/hapjs/card/api/IRenderListener;->onRenderFailed(ILjava/lang/String;)Z

    return-void
.end method
