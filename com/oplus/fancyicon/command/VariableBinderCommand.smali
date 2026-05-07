.class public Lcom/oplus/fancyicon/command/VariableBinderCommand;
.super Lcom/oplus/fancyicon/command/ActionCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lcom/oplus/fancyicon/data/binder/VariableBinder;

.field private mCommand:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/command/ActionCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    sget-object v0, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->Invalid:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    iput-object v0, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mCommand:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    iput-object p1, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    const-string p1, "name"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mName:Ljava/lang/String;

    const-string p1, "command"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "refresh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    sget-object p1, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->Refresh:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    iput-object p1, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mCommand:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    :cond_23
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mBinder:Lcom/oplus/fancyicon/data/binder/VariableBinder;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/oplus/fancyicon/command/VariableBinderCommand$1;->$SwitchMap$com$oplus$fancyicon$command$VariableBinderCommand$Command:[I

    iget-object v1, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mCommand:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    goto :goto_17

    :cond_12
    iget-object p0, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mBinder:Lcom/oplus/fancyicon/data/binder/VariableBinder;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->refresh()V

    :cond_17
    :goto_17
    return-void
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object v1, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/command/VariableBinderCommand;->mBinder:Lcom/oplus/fancyicon/data/binder/VariableBinder;

    return-void
.end method
