.class public Lcom/oplus/fancyicon/animation/SourcesAnimation$Source;
.super Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/animation/SourcesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Source"


# instance fields
.field public mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public load(Lorg/w3c/dom/Element;)Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "src"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Lcom/oplus/fancyicon/animation/BaseAnimation$AnimationItem;

    move-result-object p0

    return-object p0
.end method
