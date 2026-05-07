.class public Lcom/oplus/fancyicon/command/VisibilityProperty;
.super Lcom/oplus/fancyicon/command/PropertyCommand;
.source ""


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "visibility"


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/Variable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/fancyicon/command/PropertyCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/Variable;Ljava/lang/String;)V

    const-string p1, "toggle"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_f

    iput-boolean p2, p0, Lcom/oplus/fancyicon/command/VisibilityProperty;->mIsToggle:Z

    goto :goto_25

    :cond_f
    const-string p1, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iput-boolean p2, p0, Lcom/oplus/fancyicon/command/VisibilityProperty;->mIsShow:Z

    goto :goto_25

    :cond_1a
    const-string p1, "false"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/command/VisibilityProperty;->mIsShow:Z

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/command/PropertyCommand;->mTargetElement:Lcom/oplus/fancyicon/elements/ScreenElement;

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/oplus/fancyicon/command/VisibilityProperty;->mIsToggle:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->show(Z)V

    goto :goto_17

    :cond_12
    iget-boolean p0, p0, Lcom/oplus/fancyicon/command/VisibilityProperty;->mIsShow:Z

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->show(Z)V

    :cond_17
    :goto_17
    return-void
.end method
