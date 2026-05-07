.class public Lcom/oplus/fancyicon/command/OnOffCommandHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OFF:Ljava/lang/String; = "off"

.field private static final ON:Ljava/lang/String; = "on"

.field private static final TOGGLE:Ljava/lang/String; = "toggle"


# instance fields
.field public mIsOn:Z

.field public mIsToggle:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "toggle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Lcom/oplus/fancyicon/command/OnOffCommandHelper;->mIsToggle:Z

    goto :goto_25

    :cond_f
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/oplus/fancyicon/command/OnOffCommandHelper;->mIsOn:Z

    goto :goto_25

    :cond_1a
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/command/OnOffCommandHelper;->mIsOn:Z

    :cond_25
    :goto_25
    return-void
.end method
