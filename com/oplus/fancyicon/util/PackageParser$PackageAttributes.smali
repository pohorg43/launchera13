.class Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/util/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageAttributes"
.end annotation


# static fields
.field private static final ATTR_NEWACTION:Ljava/lang/String; = "newAction"

.field private static final ATTR_NEWNAME:Ljava/lang/String; = "newName"

.field private static final ATTR_OLDACTION:Ljava/lang/String; = "oldAction"

.field private static final ATTR_OLDNAME:Ljava/lang/String; = "oldName"


# instance fields
.field public mNewAction:Ljava/lang/String;

.field public mNewComponentName:Landroid/content/ComponentName;

.field public mOldAction:Ljava/lang/String;

.field public mOldComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "oldName"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "newName"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mOldComponentName:Landroid/content/ComponentName;

    :cond_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewComponentName:Landroid/content/ComponentName;

    :cond_27
    const-string v0, "oldAction"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mOldAction:Ljava/lang/String;

    const-string v0, "newAction"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewAction:Ljava/lang/String;

    return-void
.end method
