.class abstract Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/fancyicon/util/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance p0, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;

    new-instance p1, Lcom/oplus/fancyicon/data/Variable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oplus/fancyicon/data/Variable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;-><init>(Lcom/oplus/fancyicon/data/Variable;)V

    return-object p0

    :cond_1c
    invoke-static {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p1

    if-nez p1, :cond_3a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter expression:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextFormatter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_3a
    new-instance p0, Lcom/oplus/fancyicon/util/TextFormatter$ExpressioPara;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/util/TextFormatter$ExpressioPara;-><init>(Lcom/oplus/fancyicon/data/expression/Expression;)V

    return-object p0
.end method

.method public static buildArray(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)[Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v2, v1, :cond_38

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v4, :cond_28

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_28

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    goto :goto_35

    :cond_28
    const/16 v6, 0x28

    if-ne v5, v6, :cond_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_2f
    const/16 v6, 0x29

    if-ne v5, v6, :cond_35

    add-int/lit8 v4, v4, -0x1

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_38
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    move-result-object p0

    if-eqz p0, :cond_52

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    return-object p0

    :cond_52
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract evaluate(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/Object;
.end method
