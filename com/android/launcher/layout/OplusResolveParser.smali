.class public Lcom/android/launcher/layout/OplusResolveParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusResolveParser"


# instance fields
.field private final mChildParser:Lcom/android/launcher/layout/OplusAppShortcutWithUriParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/layout/OplusAppShortcutWithUriParser;

    invoke-direct {v0, p1}, Lcom/android/launcher/layout/OplusAppShortcutWithUriParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    iput-object v0, p0, Lcom/android/launcher/layout/OplusResolveParser;->mChildParser:Lcom/android/launcher/layout/OplusAppShortcutWithUriParser;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, -0x1

    move v2, v1

    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_14

    goto :goto_15

    :cond_14
    return v2

    :cond_15
    :goto_15
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    if-le v2, v1, :cond_1b

    goto :goto_6

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "favorite"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v2, p0, Lcom/android/launcher/layout/OplusResolveParser;->mChildParser:Lcom/android/launcher/layout/OplusAppShortcutWithUriParser;

    invoke-virtual {v2, p1}, Lcom/android/launcher/layout/OplusAppShortcutParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_6

    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fallback groups can contain only favorites, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusResolveParser"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
